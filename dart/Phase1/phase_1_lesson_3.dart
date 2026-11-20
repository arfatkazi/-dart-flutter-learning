 /* In lesson three I know  What is the Dart VM? 
 The Dart VM is a software execution environment for Dart programs on native platforms. It supports development-time compilation and execution, debugging, and other runtime services.
*/


// I understand between JIT VS AOT compilation when and why it is used 
// JIT  Just in time is used in development JIT compiles while we run the code it execute simultaneously like we used to do in html css javascript it give us result fast in development.
// AOT mean Ahead of time it used in android development when we launch our application it Compiles code before the application runs. it is used in production 



// I study about Dart compilation targets

// Target	                    Typical command	                                  Output / purpose
// Native JIT	                  dart run main.dart                  	        Run during development
// Native executable	          dart compile exe main.dart                  	Standalone native application
// AOT snapshot	                dart compile aot-snapshot main.dart         AOT module requiring a separate runtime
// JIT snapshot	                dart compile jit-snapshot main.dart         JIT-oriented snapshot
// Kernel	                      dart compile kernel main.dart                Intermediate representation
// JavaScript	                  dart compile js web/main.dart                 Browser JavaScript output
// WebAssembly	                dart compile wasm web/main.dart             WebAssembly and supporting files
