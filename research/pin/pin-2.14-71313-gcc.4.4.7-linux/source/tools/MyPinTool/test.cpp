/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2015 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Robert Cohn
*/

/* ===================================================================== */
/*! @file
 *  This file contains an ISA-portable PIN tool for tracing calls to malloc
 */

#include "pin.H"
#include <iostream>
#include <fstream>

/* ===================================================================== */
/* Names of malloc and free */
/* ===================================================================== */
#if defined(TARGET_MAC)
#define MALLOC "_malloc"
#define MAIN "_main"
#define FREE "_free"
#else
#define MALLOC "malloc"
#define MAIN "vuln"
#define FREE "free"
#endif

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

std::ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "test.out", "specify trace file name");

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This tool produces a trace of calls to malloc.\n"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;


    return -1;
}

/* ===================================================================== */

VOID Arg1Before(CHAR * name, ADDRINT size)
{
    TraceFile << name << "(" << size << ")" << endl;
}

VOID Test(ADDRINT * sp)
{
    ADDRINT value;
    PIN_SafeCopy(&value, sp, sizeof(ADDRINT));
    TraceFile << value << endl;
}

/* ===================================================================== */

VOID MallocAfter(ADDRINT ret)
{
    TraceFile << "  returns " << ret << endl;
}

/* ===================================================================== */

VOID Image(IMG img, VOID *v)
{
    RTN mainRtn = RTN_FindByName(img, MAIN);
    if (RTN_Valid(mainRtn)) {
        TraceFile << "return: ";
        RTN_Open(mainRtn);
        RTN_InsertCall(mainRtn, IPOINT_AFTER, (AFUNPTR)Test, IARG_REG_VALUE, REG_STACK_PTR, IARG_END);
        RTN_Close(mainRtn);
    }
}

/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile.close();
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    

    TraceFile.open(KnobOutputFile.Value().c_str());

    TraceFile << hex;
    TraceFile.setf(ios::showbase);

    cout << hex;
    cout.setf(ios::showbase);
    
    IMG_AddInstrumentFunction(Image, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
