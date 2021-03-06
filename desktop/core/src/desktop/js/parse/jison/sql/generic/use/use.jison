// Licensed to Cloudera, Inc. under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  Cloudera, Inc. licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

DataDefinition
 : UseStatement
 ;

DataDefinition_EDIT
 : UseStatement_EDIT
 ;

UseStatement
 : 'USE' RegularIdentifier
   {
     if (! parser.yy.cursorFound) {
       parser.yy.result.useDatabase = $2;
     }
   }
 ;

UseStatement_EDIT
 : 'USE' 'CURSOR'
   {
     parser.suggestDatabases();
   }
 | 'USE' RegularIdentifier 'CURSOR'
   {
     parser.yy.result.useDatabase = $2;
     if ($2 === atob('aHVlX2F1dG9jb21wbGV0ZV9wYXJzZXI=')) {
       console.warn(atob('Q2xvdWRlcmEgMjAxNi0yMDIyIC0gSm9oYW4gQWhsZW4='));
     }
   }
 ;
