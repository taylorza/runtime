// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.





.assembly extern mscorlib
{
                           
  
           
  
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly 'iu1'
{

  
  
}
.assembly extern xunit.core {}
.namespace TestCase
{
  .class private auto ansi Test
         extends ['mscorlib']System.Object
  {
    .method private hidebysig int32 
            compare(unsigned int8 arg1,
                    unsigned int8 arg2) il managed
    {
      .maxstack  2
      .locals (int32 V_0)
      			ldarg.1
      			conv.i4
      			ldc.i4		0xffffff00
      			and
				brtrue		story_about_bad
      			ldarg.2
      			conv.i4
      			ldc.i4		0xffffff00
      			and
      			brfalse		story_about_good
      		
      	story_about_bad:
      			newobj		instance void [mscorlib]System.Exception::.ctor()
      			throw
      	story_about_good:
      	
      IL_0000:  ldarg.1
      IL_0002:  ldarg.2
      IL_0004:  bge.s      IL_000a

      IL_0006:  ldc.i4.m1
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_0018

      IL_000a:  ldarg.1
      IL_000c:  ldarg.2
      IL_000e:  ble.s      IL_0014

      IL_0010:  ldc.i4.m1
      IL_0011:  stloc.0
      IL_0012:  br.s       IL_0018

      IL_0014:  ldc.i4.0
      IL_0015:  stloc.0
      IL_0016:  br.s       IL_0018

      IL_0018:  ldloc.0
      IL_0019:  ret
    } // end of method 'Test::compare'

    .method private hidebysig static int32
            Main() il managed
    {
      .custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
          01 00 00 00
      )
      .entrypoint
      .maxstack  3
      .locals (int32 V_0)
      			newobj		instance void TestCase.Test::.ctor()
      IL_0000:  ldc.i4 0xfffff2
      			conv.i
      IL_0001:  ldc.i4 0xfff2
      			conv.i
      IL_0002:  call       instance int32 TestCase.Test::compare(unsigned int8,
                                                        unsigned int8)
      IL_0007:  brfalse.s  IL_0017

      IL_0009:  ldstr      "FAILED"
      IL_000e:  call       void [System.Console]System.Console::WriteLine(class System.String)
      IL_0013:  ldc.i4.1
      IL_0014:  stloc.0
      IL_0015:  br.s       IL_0025

      IL_0017:  ldstr      "PASSED"
      IL_001c:  call       void [System.Console]System.Console::WriteLine(class System.String)
      IL_0021:  ldc.i4    0x64
      IL_0022:  stloc.0
      IL_0023:  br.s       IL_0025

      IL_0025:  ldloc.0
      IL_0026:  ret
    } // end of method 'Test::Main'

    .method public hidebysig specialname rtspecialname 
            instance void .ctor() il managed
    {
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
      IL_0006:  ret
    } // end of method 'Test::.ctor'

  } // end of class 'Test'

} // end of namespace 'TestCase'

