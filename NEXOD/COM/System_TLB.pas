﻿unit System_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis la bibliothèque de types. Si cette dernière (via une autre bibliothèque de types
// s'y référant) est explicitement ou indirectement ré-importée, ou la commande "Actualiser"
// de l'éditeur de bibliothèque de types est activée lors de la modification de la bibliothèque
// de types, le contenu de ce fichier sera régénéré et toutes les modifications
// manuellement apportées seront perdues.
// ************************************************************************ //

// $Rev: 98336 $
// Fichier généré le 04/02/2022 11:55:52 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb (2)
// LIBID : {BEE4BFEC-6683-3E67-9167-3C0CBC68F40A}
// LCID : 0
// Fichier d'aide :
// Chaîne d'aide :
// DepndLst :
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// Bibliothèque de types parent :
// (0) v1.3 PMS_NEXOSALE30, (C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.NEXOSALE30.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
// Remarque : le symbole 'System' a été renommé en 'System_'
// Remarque : paramètre 'property' dans IEventBindingService.GetEvent changé en 'property_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;

// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:
// Bibliothèques de types : LIBID_xxxx
// CoClasses              : CLASS_xxxx
// Interfaces DISP        : DIID_xxxx
// Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
	// Versions mineure et majeure de la bibliothèque de types
	System_MajorVersion = 2;
	System_MinorVersion = 4;

	LIBID_System_: TGUID = '{BEE4BFEC-6683-3E67-9167-3C0CBC68F40A}';

	IID__CodeTypeMember: TGUID = '{8068AE1D-26CB-3DB6-97CD-ED83DE116C5A}';
	IID__CodeTypeReference: TGUID = '{B6D972C6-022B-3F91-9655-E288E9D32C55}';
	IID__CodeCompileUnit: TGUID = '{6F20C263-AF67-380F-A482-9A21F7599748}';
	IID__CodeTypeDeclaration: TGUID = '{7AA363E1-FA53-31EB-BE4A-1EB4838264F3}';
	IID__CodeExpression: TGUID = '{AD377794-864F-3421-9FB8-C684BBC1BC02}';
	IID__CodeNamespace: TGUID = '{31ED1DCB-C007-3F96-8809-4D5E3540A7C1}';
	IID__CodeStatement: TGUID = '{B125774D-EF66-382B-878D-2D916999B0D2}';
	IID__CodeDomProvider: TGUID = '{61059E8D-1DD2-3F4B-A4C5-D566B8968FFB}';
	IID__TypeConverter: TGUID = '{05241989-96C5-3BF9-AB9B-37E261C1B8F8}';
	IID_ITypeDescriptorContext: TGUID = '{5CBAE170-8759-3B8A-B919-E12FB86AD1F3}';
	IID__CodeAttributeArgument: TGUID = '{02EFD952-FF8C-3B72-8C33-739A506D53D9}';
	IID__CodeDefaultValueExpression: TGUID = '{EA9E1DD2-EF9A-3570-AE1A-2F625F594C3B}';
	IID__CodeDirectionExpression: TGUID = '{11EDAF3B-144E-32C8-8BE0-81D40A950656}';
	IID__CodeBinaryOperatorExpression: TGUID = '{A22929C9-D301-3F5B-98B7-844FDBA1DEDF}';
	IID__CodeIterationStatement: TGUID = '{B16F7137-C0E7-3ECF-9652-FB1EA947E44E}';
	IID__CodePrimitiveExpression: TGUID = '{175BB49A-4CBE-38B3-8C6C-1B0145EDABB7}';
	IID__CodeThrowExceptionStatement: TGUID = '{12350E95-6F4E-30F0-9343-72F1C64380A0}';
	IID__CodeArrayCreateExpression: TGUID = '{F7955E55-7F3B-3277-AA0C-F62AA615676D}';
	IID__CodeBaseReferenceExpression: TGUID = '{45E29CA6-670A-3B13-9557-4E5903056BF3}';
	IID__CodeCastExpression: TGUID = '{90BED8ED-21E3-31FE-8F02-C929BA4FB0AC}';
	IID__CodeDelegateCreateExpression: TGUID = '{D14E12C1-E1D1-3B74-A3AF-021A5A268FBE}';
	IID__CodeFieldReferenceExpression: TGUID = '{82D57B2B-C639-32A0-89B4-62A0C29DD64E}';
	IID__CodeArgumentReferenceExpression: TGUID = '{A52B85C6-5370-35C9-A04A-04A92013862C}';
	IID__CodeVariableReferenceExpression: TGUID = '{54B54936-A71C-3A45-B982-2C484E7BCF86}';
	IID__CodeIndexerExpression: TGUID = '{C92C323F-8601-34D4-A2D6-F5E2653DB456}';
	IID__CodeArrayIndexerExpression: TGUID = '{732748F5-5256-327B-A7E5-2000B07F21B3}';
	IID__CodeSnippetExpression: TGUID = '{9F3E3CD1-8082-31E9-851C-3E177E56A87B}';
	IID__CodeMethodInvokeExpression: TGUID = '{FFE1F142-85CF-3353-8512-EE73775E9C4C}';
	IID__CodeMethodReferenceExpression: TGUID = '{CBDF02F4-A9F4-33C0-8B24-275008890DCB}';
	IID__CodeEventReferenceExpression: TGUID = '{35872687-5A11-34D7-85AB-865830A3BDEE}';
	IID__CodeDelegateInvokeExpression: TGUID = '{6F6C3482-8900-36EA-B621-943534E82C73}';
	IID__CodeObjectCreateExpression: TGUID = '{CFE5E5E9-745F-348B-A7E6-38A46D1A20E0}';
	IID__CodeParameterDeclarationExpression: TGUID = '{EE96565B-2B1A-33C6-BA07-B63158F1C8C4}';
	IID__CodePropertySetValueReferenceExpression: TGUID = '{2EE13FA1-8A02-3573-9AC9-4FEBD2CEAB45}';
	IID__CodeThisReferenceExpression: TGUID = '{3B4A1A6B-8E65-355D-B93A-E6AB753B2401}';
	IID__CodeExpressionStatement: TGUID = '{CEA240AF-60C5-3C69-9DA1-DA3F9A6D7B3C}';
	IID__CodeCommentStatementCollection: TGUID = '{E34CEB72-8F86-333D-AEDA-069221DF6A1A}';
	IID__CodeComment: TGUID = '{C94F39B3-436F-3711-9CB0-91C6299B62A2}';
	IID__CodeMethodReturnStatement: TGUID = '{851D821B-1E0C-3E91-832D-BA593523F566}';
	IID__CodeConditionStatement: TGUID = '{69904B31-5FB5-39BF-83B0-5DDFA1F26D71}';
	IID__CodeTryCatchFinallyStatement: TGUID = '{8FD0F76A-29BF-3982-8335-C9B44ABF31C3}';
	IID__CodeAssignStatement: TGUID = '{E2024DE0-DC21-305D-8761-6C31F2177FB0}';
	IID__CodeAttachEventStatement: TGUID = '{F7BC47E9-706C-3AA7-B1BA-8AB95188FA11}';
	IID__CodeRemoveEventStatement: TGUID = '{853BC437-CA6E-375D-BCBB-818E917D9691}';
	IID__CodeSnippetStatement: TGUID = '{B4B00613-C48B-3FA9-B8F6-A527EC6F21C3}';
	IID__CodeGotoStatement: TGUID = '{8F1BAED9-52EC-3545-9CF0-6ED71A76A5CA}';
	IID__CodeLabeledStatement: TGUID = '{56699CCA-FD8D-3AD2-9643-149BAD87FD60}';
	IID__CodeVariableDeclarationStatement: TGUID = '{4192A87C-5C57-3879-8624-AF5CA2ED9EB2}';
	IID__CodeLinePragma: TGUID = '{1B52DED6-92F3-3B4F-851C-AB1F647582A3}';
	IID__CodeMemberEvent: TGUID = '{E1A7EA9F-5D43-3FA9-AFBC-9A2BFDA84B65}';
	IID__CodeMemberField: TGUID = '{EEF50D17-7AA6-3E14-96C6-DD90FE5BAA1E}';
	IID__CodeSnippetTypeMember: TGUID = '{575BF8D0-7A9D-39EB-81F9-AA2BEBA890FA}';
	IID__CodeMemberMethod: TGUID = '{95C2EE26-4247-3DDC-8056-97353F10DE8F}';
	IID__CodeEntryPointMethod: TGUID = '{7CD4EF19-27EB-399E-8ED2-C6647A99C03E}';
	IID__CodeMemberProperty: TGUID = '{802E2ACC-A7F8-3CA9-9114-F49998BEBE6E}';
	IID__CodePropertyReferenceExpression: TGUID = '{F8D64802-F9B7-3095-A641-D31E6E9F87B1}';
	IID__CodeConstructor: TGUID = '{5A33C771-806E-337D-AE1F-66B523FC49BF}';
	IID__CodeTypeConstructor: TGUID = '{261AD877-0F22-33DE-9A3A-31F5DA424B30}';
	IID__CodeTypeOfExpression: TGUID = '{12CBCE8E-75FF-312F-81B9-7FBC6212090B}';
	IID__CodeDirectiveCollection: TGUID = '{EEFBDD27-4904-3E90-ACFC-624164CB45DD}';
	IID__CodeNamespaceImport: TGUID = '{34418787-726B-3E74-AEED-C01397FC707D}';
	IID__CodeAttributeDeclarationCollection: TGUID = '{7E9ACA22-637C-3F88-A931-AAF36A4F9A6B}';
	IID__CodeExpressionCollection: TGUID = '{AF72CC74-2275-362A-9141-A4A79D596F39}';
	IID__CodeAttributeArgumentCollection: TGUID = '{FE84E484-A7EC-3D15-B5E2-EDC2DE2DB42E}';
	IID__CodeAttributeDeclaration: TGUID = '{EF72D021-2C6D-3E33-9442-574BFD6E0871}';
	IID__CodeCatchClause: TGUID = '{609C7788-BDB0-364C-92E3-FC16AC613430}';
	IID__CodeStatementCollection: TGUID = '{4B9A5032-4B8C-3DE6-997C-C38B4B3AF26A}';
	IID__CodeCatchClauseCollection: TGUID = '{FF5E1CD9-0478-34A4-9B9C-7C80BCB1A725}';
	IID__CodeChecksumPragma: TGUID = '{7EB20114-E822-358C-BDAB-DCF9E5090F23}';
	IID__CodeDirective: TGUID = '{767E752E-2315-35CF-9652-7FC46AE870D3}';
	IID__CodeObject: TGUID = '{EE499EFD-22E2-3740-A64A-2AB010099C01}';
	IID__CodeCommentStatement: TGUID = '{0C13F8B9-F2E0-3918-A33E-3E491BDC529E}';
	IID__CodeNamespaceCollection: TGUID = '{F5E54F16-ADE3-3B5D-8B05-1F9803557905}';
	IID__CodeTypeReferenceCollection: TGUID = '{68A04561-D0A0-3EEB-B904-462DC4EB5531}';
	IID__CodeParameterDeclarationExpressionCollection: TGUID = '{05192769-7D6A-3C8C-94C2-DFA668F61088}';
	IID__CodeTypeParameterCollection: TGUID = '{6E814F1F-C349-3766-B55D-87C9B0232B20}';
	IID__CodeTypeDeclarationCollection: TGUID = '{BE0ECED3-5F0D-310A-B352-7D1ADF28F8EC}';
	IID__CodeNamespaceImportCollection: TGUID = '{4C545457-76D7-3C56-B277-6A9E86D1046F}';
	IID__CodeRegionDirective: TGUID = '{26AE5CC6-CCFD-3906-8B68-16E5EEFABB10}';
	IID__CodeSnippetCompileUnit: TGUID = '{C7D34CF6-CF82-38B0-BF67-EB36DA63AE6E}';
	IID__CodeTypeMemberCollection: TGUID = '{F943231E-6192-33A0-9CA3-D6ED0E4F323D}';
	IID__CodeTypeDelegate: TGUID = '{455090AB-5C44-3F4F-8EED-CCC90A3112B5}';
	IID__CodeTypeParameter: TGUID = '{B6ED2127-296F-3B31-AEB5-E2101E98D746}';
	IID__CodeTypeReferenceExpression: TGUID = '{726BB04D-2C4C-3E3D-A01A-31448DB063DD}';
	IID__Component: TGUID = '{06565C0F-C465-37DE-896F-9864BC0BFC96}';
	IID__AttributeCollection: TGUID = '{6F971E04-B06A-3DD0-B6F5-622826693454}';
	IID__PropertyDescriptor: TGUID = '{FE5060F8-212F-3A4F-8FA8-DB2E14588C49}';
	IID_IComponent: TGUID = '{B86E59F2-F1E2-389D-B5F1-C55307C8106E}';
	IID_ISite: TGUID = '{C4E1006A-9D98-3E96-A07E-921725135C28}';
	IID_IContainer: TGUID = '{61D9C50C-4AAD-3539-AF82-4F36C19D77C8}';
	IID__ComponentCollection: TGUID = '{42F00C62-F454-3A38-AF9E-35D4E2BDFDAC}';
	IID__EventDescriptor: TGUID = '{95B6A563-4A39-37A2-91D7-04B8ECDD1B66}';
	IID__EventDescriptorCollection: TGUID = '{4C933253-83F2-35B6-961A-0780FF1BAF7C}';
	IID__MemberDescriptor: TGUID = '{F55EFA91-812E-3C6E-998F-3598E93FB8A7}';
	IID__MarshalByValueComponent: TGUID = '{35F38044-2017-3E05-BA83-1B87CC0D49C7}';
	IID_IDesigner: TGUID = '{6EEF3D0D-305A-3DF4-9830-8C2B40E1C4BF}';
	IID_IDesignerHost: TGUID = '{EEC98CD8-EF5B-3B60-82C9-86F616F6BB20}';
	IID__CommandID: TGUID = '{FC50598B-2406-33D2-BA9A-CFBEA52BC05A}';
	IID__ComponentChangedEventArgs: TGUID = '{A8FEF1C6-D434-3686-A4DE-B68E8EABB509}';
	IID__ComponentChangedEventHandler: TGUID = '{0451C390-1F90-341D-9278-B9FF2636D67D}';
	IID__ComponentChangingEventArgs: TGUID = '{B78CBAA3-37DF-31C9-ABD2-CDCB1A7FBA9F}';
	IID__ComponentChangingEventHandler: TGUID = '{7F8C2DA3-D337-334F-92E9-87BE9BDC6070}';
	IID__ComponentEventArgs: TGUID = '{438E8DCF-6875-305F-8CA5-40DBB15782A6}';
	IID__ComponentEventHandler: TGUID = '{290B355D-80D3-3AFA-96AB-B4D395729374}';
	IID__ComponentRenameEventArgs: TGUID = '{DA5D7739-9522-3E28-9AB7-7C2D7D27C63A}';
	IID__ComponentRenameEventHandler: TGUID = '{BA2DF049-DA87-3BD1-97B0-7904B59ADF7E}';
	IID__DesignerTransactionCloseEventArgs: TGUID = '{3924A637-C2C4-3558-945F-279B5AC39ED9}';
	IID__DesignerTransactionCloseEventHandler: TGUID = '{4543D155-EE6A-3529-BC8D-CF0E866B6B0B}';
	IID__DesignerVerb: TGUID = '{7C41B90E-52FB-3E54-8B03-EBE0BF172C84}';
	IID__MenuCommand: TGUID = '{1FF238CE-6190-3750-A34F-05F02B7315A6}';
	IID__DesignerVerbCollection: TGUID = '{AC3BDDA4-25B8-3321-A1C0-7C37BBF2DDED}';
	IID_IComponentChangeService: TGUID = '{2FEF0210-9EBD-32C0-9BFD-24841AC0FCF7}';
	IID_IServiceContainer: TGUID = '{6BA96B42-7FDD-3223-BF52-7FE677B92815}';
	IID_IEventBindingService: TGUID = '{1A19D89E-F4FE-3E8E-B7EC-05D4E592F3F6}';
	IID_IMenuCommandService: TGUID = '{DF651C5D-783E-3789-901F-A962B7587E69}';
	IID_IRootDesigner: TGUID = '{2CC5E562-6C14-34A6-9D0B-E6FF949AE8FB}';
	IID_ISelectionService: TGUID = '{297A65BE-5080-3F7F-AD19-B0D05D6F2327}';
	IID__ServiceCreatorCallback: TGUID = '{BE380BEC-79F2-3876-B510-FA2FE43B7EB7}';
	IID__DesignerLoader: TGUID = '{43BE964C-1B4A-3D1F-9D94-8185A1E6CB7B}';
	IID__PerformanceCounterManager: TGUID = '{A9809E7D-42F8-3284-82CF-AB5F863A29AA}';
	IID__WebHeaderCollection: TGUID = '{B97E84F2-FAB2-340D-8D49-2AC85CF5C0EC}';
	IID__WebClient: TGUID = '{85B4A627-7552-3AA6-8A1C-A213C5788FEC}';
	IID__StandardOleMarshalObject: TGUID = '{05F3D6C7-D4D1-37EB-AC35-63347B838A23}';
	CLASS_CodeTypeMember: TGUID = '{69DCE654-E184-38E5-BFD6-E0EB6F592A11}';
	CLASS_CodeTypeReference: TGUID = '{F3DE25AC-25ED-374C-8805-4B6456FA0CB2}';
	CLASS_CodeCompileUnit: TGUID = '{25A5D609-4D61-3C52-A3E1-49EF93066FD1}';
	CLASS_CodeTypeDeclaration: TGUID = '{2B708A48-52D8-3049-9565-6BA42EE2BE17}';
	CLASS_CodeExpression: TGUID = '{F4267FE0-72E6-34E2-9093-17DEA43078C1}';
	CLASS_CodeNamespace: TGUID = '{DD1C0C7A-BC95-339A-8321-9DBF4803CAF4}';
	CLASS_CodeStatement: TGUID = '{10A98D9F-994D-3762-89B4-2116A95063EE}';
	CLASS_CodeDomProvider: TGUID = '{5FAD3639-1A4D-3BDC-A4A5-C59E36165F5B}';
	CLASS_TypeConverter: TGUID = '{75992C48-BF7A-3B44-AC68-A946CFFDB2BF}';
	CLASS_CodeAttributeArgument: TGUID = '{06E6FAA2-7623-396A-B9F1-75D31A17CF27}';
	CLASS_CodeDefaultValueExpression: TGUID = '{5AECB7A2-5797-3BFF-9B86-FC4CB9AE4F41}';
	CLASS_CodeDirectionExpression: TGUID = '{5FEA4BE0-D7FC-3DAF-877E-16F181F18BAE}';
	CLASS_CodeBinaryOperatorExpression: TGUID = '{30776C84-E88E-330D-8CE2-B5BF1E48427D}';
	CLASS_CodeIterationStatement: TGUID = '{421C8130-0316-3993-801D-E6BE3A159BAA}';
	CLASS_CodePrimitiveExpression: TGUID = '{6C1E6791-0558-3CD3-AAB8-C90A2B03EF5F}';
	CLASS_CodeThrowExceptionStatement: TGUID = '{A2F81DED-8536-3C27-9759-BA3EAC94D0A2}';
	CLASS_CodeArrayCreateExpression: TGUID = '{24B3BCED-984A-340B-923C-C9B39D94D5A9}';
	CLASS_CodeBaseReferenceExpression: TGUID = '{3A9E7044-FBD0-3E23-82AE-F0DFB86C0C4E}';
	CLASS_CodeCastExpression: TGUID = '{DE2AE793-C1C1-3C33-8B9C-0D8F90301860}';
	CLASS_CodeDelegateCreateExpression: TGUID = '{92FB692E-211C-33DA-BE48-05B690D3F00B}';
	CLASS_CodeFieldReferenceExpression: TGUID = '{E2F01F29-A264-387B-AE29-A273AC89EEE7}';
	CLASS_CodeArgumentReferenceExpression: TGUID = '{3E3F971A-A80D-3468-A9EB-3113CE46D13A}';
	CLASS_CodeVariableReferenceExpression: TGUID = '{39ABD141-93AE-397A-9E98-6F2E50124CEC}';
	CLASS_CodeIndexerExpression: TGUID = '{4D19B9BB-0979-38BE-B438-29997E58C2D1}';
	CLASS_CodeArrayIndexerExpression: TGUID = '{8C0BC333-6F03-3228-8B5C-31C8627DAAB3}';
	CLASS_CodeSnippetExpression: TGUID = '{509AF058-A0E5-32E6-AE00-15F8209D31F9}';
	CLASS_CodeMethodInvokeExpression: TGUID = '{62AC67B4-2088-3DB7-9A80-154EFE9C6CAF}';
	CLASS_CodeMethodReferenceExpression: TGUID = '{36AE2637-C0A4-3214-8A93-AEE1CABD540E}';
	CLASS_CodeEventReferenceExpression: TGUID = '{E396945B-2690-377E-A992-12775D444CD7}';
	CLASS_CodeDelegateInvokeExpression: TGUID = '{D79B10B1-16A3-3A23-A606-CE1227F3765A}';
	CLASS_CodeObjectCreateExpression: TGUID = '{F3BA98C3-39CF-3C2D-ADA5-75BD63D7AF08}';
	CLASS_CodeParameterDeclarationExpression: TGUID = '{6ACD3B02-EF29-31B9-8958-45B47BAD4A00}';
	CLASS_CodePropertySetValueReferenceExpression: TGUID = '{395C1A4D-AABB-3415-B527-8CB694777B84}';
	CLASS_CodeThisReferenceExpression: TGUID = '{21206362-562F-3F08-8F06-4BCFD2C95F29}';
	CLASS_CodeExpressionStatement: TGUID = '{ABC8FC89-D640-32FC-9E9F-04410010E5EC}';
	CLASS_CodeCommentStatementCollection: TGUID = '{C12A8292-F24A-3BA8-94E6-EB3206D225E2}';
	CLASS_CodeComment: TGUID = '{F3E7E9C5-E63A-3F3B-A4F8-096E82664819}';
	CLASS_CodeMethodReturnStatement: TGUID = '{031A6B24-BFAA-3D76-B6DA-59C9C469A0FB}';
	CLASS_CodeConditionStatement: TGUID = '{1BA2DE2F-EE39-3628-968F-0E12705013C4}';
	CLASS_CodeTryCatchFinallyStatement: TGUID = '{CB3BF2D6-DB22-31DF-A6F4-E3707972E10C}';
	CLASS_CodeAssignStatement: TGUID = '{E4350CAA-27C9-320E-AC79-71294ABDA592}';
	CLASS_CodeAttachEventStatement: TGUID = '{1AB6B26C-A339-3B51-9308-44CA3A05F873}';
	CLASS_CodeRemoveEventStatement: TGUID = '{F38B3709-9B63-32E6-9CFB-07991C40717F}';
	CLASS_CodeSnippetStatement: TGUID = '{880287BC-D3A4-3113-B8D1-6538B7C19E97}';
	CLASS_CodeGotoStatement: TGUID = '{148E03E0-C74E-3D67-BD3A-B27995F9AC49}';
	CLASS_CodeLabeledStatement: TGUID = '{4975B127-5464-3E9E-B4AA-D6DF3721189A}';
	CLASS_CodeVariableDeclarationStatement: TGUID = '{943B4474-D661-344E-AD1B-1A1F3C8EA01A}';
	CLASS_CodeLinePragma: TGUID = '{17575EA6-BE56-381E-88E7-74B376743E77}';
	CLASS_CodeMemberEvent: TGUID = '{E401E3C7-2646-37C7-A37A-BA115D000FAA}';
	CLASS_CodeMemberField: TGUID = '{ACDCDF3A-21DC-37E3-9253-CD26CAEC0B58}';
	CLASS_CodeSnippetTypeMember: TGUID = '{0FAC5DAB-AD52-38BF-854E-FD3059369C44}';
	CLASS_CodeMemberMethod: TGUID = '{812E9B72-2CCC-364B-9EB8-DA8F4EAE724F}';
	CLASS_CodeEntryPointMethod: TGUID = '{DFF5C8A1-425F-305D-AE85-10C9DD7704C3}';
	CLASS_CodeMemberProperty: TGUID = '{D459C868-9174-353A-BB17-F2166E83FE24}';
	CLASS_CodePropertyReferenceExpression: TGUID = '{9703F066-9C59-32C4-86B2-570E97AB75F2}';
	CLASS_CodeConstructor: TGUID = '{2A7A02A4-408D-32C6-B5E2-BC4B57399B0C}';
	CLASS_CodeTypeConstructor: TGUID = '{7544623F-E6DE-3918-9E10-29AAF16E560B}';
	CLASS_CodeTypeOfExpression: TGUID = '{FB6A595A-B5DD-3361-8842-70E806D73573}';
	CLASS_CodeDirectiveCollection: TGUID = '{ED78C3FA-AB56-353C-98BB-9280D3404C81}';
	CLASS_CodeNamespaceImport: TGUID = '{B0B32470-44A6-3DBC-BDB2-CE024F966088}';
	CLASS_CodeAttributeDeclarationCollection: TGUID = '{3A8E937E-C560-3779-A423-B645BAD276A1}';
	CLASS_CodeExpressionCollection: TGUID = '{26D06C1F-81BA-33C3-BDE2-49747AA83A11}';
	CLASS_CodeAttributeArgumentCollection: TGUID = '{424720CD-671F-329D-80DF-FA8BCD9EA9CD}';
	CLASS_CodeAttributeDeclaration: TGUID = '{C0BA0202-2FF3-3E0A-952A-B570B1371DB2}';
	CLASS_CodeCatchClause: TGUID = '{548F7954-B3FD-39E0-9A30-9D8FC9443C0E}';
	CLASS_CodeStatementCollection: TGUID = '{A531374E-FA08-36C6-AF96-31C684EEFC08}';
	CLASS_CodeCatchClauseCollection: TGUID = '{2077ECF3-61C8-3CC5-9E45-721189A88E03}';
	CLASS_CodeChecksumPragma: TGUID = '{E1845F73-C0CC-3B6B-B913-6E43F42D8BA1}';
	CLASS_CodeDirective: TGUID = '{6B405F7D-01CA-3595-A65B-34CB0168ACA0}';
	CLASS_CodeObject: TGUID = '{88D0C986-398A-3A31-9349-B0736357C40B}';
	CLASS_CodeCommentStatement: TGUID = '{F69F43D6-EF83-3723-8839-519D2421E927}';
	CLASS_CodeNamespaceCollection: TGUID = '{D4985194-80E5-36FE-8B95-8CD2E35E5FF5}';
	CLASS_CodeTypeReferenceCollection: TGUID = '{3F2E333C-9A04-33AC-95C7-7B0015BEB345}';
	CLASS_CodeParameterDeclarationExpressionCollection: TGUID = '{7FD9E7C0-B133-302F-A3A1-42167780CB62}';
	CLASS_CodeTypeParameterCollection: TGUID = '{6019C9D4-84CB-33BC-9E79-25F21172C33B}';
	CLASS_CodeTypeDeclarationCollection: TGUID = '{A0BD9913-B07D-32C3-8DF1-AA998B3FB10E}';
	CLASS_CodeNamespaceImportCollection: TGUID = '{7A168834-5605-30DB-8274-6B21E621A955}';
	CLASS_CodeRegionDirective: TGUID = '{932861EC-65C4-30F0-905D-905B9CE98979}';
	CLASS_CodeSnippetCompileUnit: TGUID = '{AF2DF285-73D3-3623-AEAB-1CDBCF75A9D0}';
	CLASS_CodeTypeMemberCollection: TGUID = '{85D435C5-7AF6-30E9-8A0B-C978737C2849}';
	CLASS_CodeTypeDelegate: TGUID = '{6FBC1E34-565D-3721-B5C0-5C796540481F}';
	CLASS_CodeTypeParameter: TGUID = '{E5E30108-7A5B-398F-B50C-09793C6299E1}';
	CLASS_CodeTypeReferenceExpression: TGUID = '{8871C106-C8BA-37A0-ADE2-E4AEBEC7E3C9}';
	CLASS_component: TGUID = '{B3B21824-D0F3-3815-847F-228660E2A20E}';
	CLASS_AttributeCollection: TGUID = '{4309D526-F739-3BE3-B89C-4F6DDE852C14}';
	CLASS_PropertyDescriptor: TGUID = '{D40E4E6F-4692-3438-B4CC-7E423473B2C1}';
	CLASS_ComponentCollection: TGUID = '{9653003F-5A61-33CB-86E6-1BA38CED5DF8}';
	CLASS_EventDescriptor: TGUID = '{52964536-AFDA-35C2-8C8B-903C2519AD4E}';
	CLASS_EventDescriptorCollection: TGUID = '{C657A06C-7655-32F7-8CC8-9A3BDC803487}';
	CLASS_MemberDescriptor: TGUID = '{670B0D04-DAD1-39A7-9043-B0B58CCB46E6}';
	CLASS_MarshalByValueComponent: TGUID = '{F3FA95A9-C5F9-3EF9-80C6-91275015C770}';
	CLASS_CommandID: TGUID = '{E60178F7-1512-389F-9CA6-084DF14CF596}';
	CLASS_ComponentChangedEventArgs: TGUID = '{06CBA6E8-112A-32BA-A7BF-7DCFE0404931}';
	CLASS_ComponentChangedEventHandler: TGUID = '{01157188-EB62-312D-AEA6-14332A2AEBF9}';
	CLASS_ComponentChangingEventArgs: TGUID = '{834C5649-9074-33F5-AB36-716D4AE08E9E}';
	CLASS_ComponentChangingEventHandler: TGUID = '{D296EB38-ADD4-3FBE-8CF5-03CBD74DDB74}';
	CLASS_ComponentEventArgs: TGUID = '{CB919E0F-1205-37EC-AC02-38B51390629F}';
	CLASS_ComponentEventHandler: TGUID = '{C001B07F-6B98-359A-8F0A-652F82BD81E1}';
	CLASS_ComponentRenameEventArgs: TGUID = '{F41E1B27-1C7C-3620-9662-BF72882E3F7E}';
	CLASS_ComponentRenameEventHandler: TGUID = '{819762B6-DC8A-3A36-B063-82BC2EE44168}';
	CLASS_DesignerTransactionCloseEventArgs: TGUID = '{C5D1EAB9-E039-399E-A709-9A0A7107A610}';
	CLASS_DesignerTransactionCloseEventHandler: TGUID = '{54BF09CE-0DB6-3D92-AA2D-546AD897EF59}';
	CLASS_DesignerVerb: TGUID = '{5231CCD9-DABB-3FDE-AD29-8FD3D382C248}';
	CLASS_MenuCommand: TGUID = '{5C719461-3A18-33D0-B3E1-33F169085C21}';
	CLASS_DesignerVerbCollection: TGUID = '{67114ED5-9F2A-3A0A-8C7A-746FDA064488}';
	CLASS_ServiceCreatorCallback: TGUID = '{E90ADE71-CAC0-3F72-834E-CD39F93670EE}';
	CLASS_DesignerLoader: TGUID = '{AD44E49C-2DED-33BD-83A6-9EB9C6C66F39}';
	CLASS_PerformanceCounterManager: TGUID = '{82840BE1-D273-11D2-B94A-00600893B17A}';
	CLASS_WebHeaderCollection: TGUID = '{430D1273-C3E9-3632-9988-389C81849C00}';
	CLASS_WebClient: TGUID = '{7D458845-B4B8-30CB-B2AD-FC4960FCDF81}';
	CLASS_StandardOleMarshalObject: TGUID = '{0EF62602-E19F-3DF5-BE17-A43AAF6BA008}';

	// *********************************************************************//
	// Déclaration d'énumérations définies dans la bibliothèque de types
	// *********************************************************************//
	// Constantes pour enum FieldDirection
type
	FieldDirection = TOleEnum;

const
	FieldDirection_In = $00000000;
	FieldDirection_Out = $00000001;
	FieldDirection_Ref = $00000002;

	// Constantes pour enum MemberAttributes
type
	MemberAttributes = TOleEnum;

const
	MemberAttributes_Abstract = $00000001;
	MemberAttributes_AccessMask = $0000F000;
	MemberAttributes_Assembly = $00001000;
	MemberAttributes_Const = $00000005;
	MemberAttributes_Family = $00003000;
	MemberAttributes_FamilyAndAssembly = $00002000;
	MemberAttributes_FamilyOrAssembly = $00004000;
	MemberAttributes_Final = $00000002;
	MemberAttributes_New = $00000010;
	MemberAttributes_Overloaded = $00000100;
	MemberAttributes_Override = $00000004;
	MemberAttributes_Private = $00005000;
	MemberAttributes_Public = $00006000;
	MemberAttributes_ScopeMask = $0000000F;
	MemberAttributes_Static = $00000003;
	MemberAttributes_VTableMask = $000000F0;

	// Constantes pour enum CodeBinaryOperatorType
type
	CodeBinaryOperatorType = TOleEnum;

const
	CodeBinaryOperatorType_Add = $00000000;
	CodeBinaryOperatorType_Assign = $00000005;
	CodeBinaryOperatorType_BitwiseAnd = $0000000A;
	CodeBinaryOperatorType_BitwiseOr = $00000009;
	CodeBinaryOperatorType_BooleanAnd = $0000000C;
	CodeBinaryOperatorType_BooleanOr = $0000000B;
	CodeBinaryOperatorType_Divide = $00000003;
	CodeBinaryOperatorType_GreaterThan = $0000000F;
	CodeBinaryOperatorType_GreaterThanOrEqual = $00000010;
	CodeBinaryOperatorType_IdentityEquality = $00000007;
	CodeBinaryOperatorType_IdentityInequality = $00000006;
	CodeBinaryOperatorType_LessThan = $0000000D;
	CodeBinaryOperatorType_LessThanOrEqual = $0000000E;
	CodeBinaryOperatorType_Modulus = $00000004;
	CodeBinaryOperatorType_Multiply = $00000002;
	CodeBinaryOperatorType_Subtract = $00000001;
	CodeBinaryOperatorType_ValueEquality = $00000008;

	// Constantes pour enum CodeRegionMode
type
	CodeRegionMode = TOleEnum;

const
	CodeRegionMode_End = $00000002;
	CodeRegionMode_None = $00000000;
	CodeRegionMode_Start = $00000001;

	// Constantes pour enum CodeTypeReferenceOptions
type
	CodeTypeReferenceOptions = TOleEnum;

const
	CodeTypeReferenceOptions_GenericTypeParameter = $00000002;
	CodeTypeReferenceOptions_GlobalReference = $00000001;

	// Constantes pour enum DesignerSerializationVisibility
type
	DesignerSerializationVisibility = TOleEnum;

const
	DesignerSerializationVisibility_Content = $00000002;
	DesignerSerializationVisibility_Hidden = $00000000;
	DesignerSerializationVisibility_Visible = $00000001;

	// Constantes pour enum ViewTechnology
type
	ViewTechnology = TOleEnum;

const
	ViewTechnology_Default = $00000002;
	ViewTechnology_Passthrough = $00000000;
	ViewTechnology_WindowsForms = $00000001;

	// Constantes pour enum SelectionTypes
type
	SelectionTypes = TOleEnum;

const
	SelectionTypes_Add = $00000040;
	SelectionTypes_Auto = $00000001;
	SelectionTypes_Click = $00000010;
	SelectionTypes_MouseDown = $00000004;
	SelectionTypes_MouseUp = $00000008;
	SelectionTypes_Normal = $00000001;
	SelectionTypes_Primary = $00000010;
	SelectionTypes_Remove = $00000080;
	SelectionTypes_Replace = $00000002;
	SelectionTypes_Toggle = $00000020;
	SelectionTypes_Valid = $0000001F;

type

	// *********************************************************************//
	// Déclaration Forward des types définis dans la bibliothèque de types
	// *********************************************************************//
	_CodeTypeMember = interface;
	_CodeTypeMemberDisp = dispinterface;
	_CodeTypeReference = interface;
	_CodeTypeReferenceDisp = dispinterface;
	_CodeCompileUnit = interface;
	_CodeCompileUnitDisp = dispinterface;
	_CodeTypeDeclaration = interface;
	_CodeTypeDeclarationDisp = dispinterface;
	_CodeExpression = interface;
	_CodeExpressionDisp = dispinterface;
	_CodeNamespace = interface;
	_CodeNamespaceDisp = dispinterface;
	_CodeStatement = interface;
	_CodeStatementDisp = dispinterface;
	_CodeDomProvider = interface;
	_CodeDomProviderDisp = dispinterface;
	_TypeConverter = interface;
	_TypeConverterDisp = dispinterface;
	ITypeDescriptorContext = interface;
	ITypeDescriptorContextDisp = dispinterface;
	_CodeAttributeArgument = interface;
	_CodeAttributeArgumentDisp = dispinterface;
	_CodeDefaultValueExpression = interface;
	_CodeDefaultValueExpressionDisp = dispinterface;
	_CodeDirectionExpression = interface;
	_CodeDirectionExpressionDisp = dispinterface;
	_CodeBinaryOperatorExpression = interface;
	_CodeBinaryOperatorExpressionDisp = dispinterface;
	_CodeIterationStatement = interface;
	_CodeIterationStatementDisp = dispinterface;
	_CodePrimitiveExpression = interface;
	_CodePrimitiveExpressionDisp = dispinterface;
	_CodeThrowExceptionStatement = interface;
	_CodeThrowExceptionStatementDisp = dispinterface;
	_CodeArrayCreateExpression = interface;
	_CodeArrayCreateExpressionDisp = dispinterface;
	_CodeBaseReferenceExpression = interface;
	_CodeBaseReferenceExpressionDisp = dispinterface;
	_CodeCastExpression = interface;
	_CodeCastExpressionDisp = dispinterface;
	_CodeDelegateCreateExpression = interface;
	_CodeDelegateCreateExpressionDisp = dispinterface;
	_CodeFieldReferenceExpression = interface;
	_CodeFieldReferenceExpressionDisp = dispinterface;
	_CodeArgumentReferenceExpression = interface;
	_CodeArgumentReferenceExpressionDisp = dispinterface;
	_CodeVariableReferenceExpression = interface;
	_CodeVariableReferenceExpressionDisp = dispinterface;
	_CodeIndexerExpression = interface;
	_CodeIndexerExpressionDisp = dispinterface;
	_CodeArrayIndexerExpression = interface;
	_CodeArrayIndexerExpressionDisp = dispinterface;
	_CodeSnippetExpression = interface;
	_CodeSnippetExpressionDisp = dispinterface;
	_CodeMethodInvokeExpression = interface;
	_CodeMethodInvokeExpressionDisp = dispinterface;
	_CodeMethodReferenceExpression = interface;
	_CodeMethodReferenceExpressionDisp = dispinterface;
	_CodeEventReferenceExpression = interface;
	_CodeEventReferenceExpressionDisp = dispinterface;
	_CodeDelegateInvokeExpression = interface;
	_CodeDelegateInvokeExpressionDisp = dispinterface;
	_CodeObjectCreateExpression = interface;
	_CodeObjectCreateExpressionDisp = dispinterface;
	_CodeParameterDeclarationExpression = interface;
	_CodeParameterDeclarationExpressionDisp = dispinterface;
	_CodePropertySetValueReferenceExpression = interface;
	_CodePropertySetValueReferenceExpressionDisp = dispinterface;
	_CodeThisReferenceExpression = interface;
	_CodeThisReferenceExpressionDisp = dispinterface;
	_CodeExpressionStatement = interface;
	_CodeExpressionStatementDisp = dispinterface;
	_CodeCommentStatementCollection = interface;
	_CodeCommentStatementCollectionDisp = dispinterface;
	_CodeComment = interface;
	_CodeCommentDisp = dispinterface;
	_CodeMethodReturnStatement = interface;
	_CodeMethodReturnStatementDisp = dispinterface;
	_CodeConditionStatement = interface;
	_CodeConditionStatementDisp = dispinterface;
	_CodeTryCatchFinallyStatement = interface;
	_CodeTryCatchFinallyStatementDisp = dispinterface;
	_CodeAssignStatement = interface;
	_CodeAssignStatementDisp = dispinterface;
	_CodeAttachEventStatement = interface;
	_CodeAttachEventStatementDisp = dispinterface;
	_CodeRemoveEventStatement = interface;
	_CodeRemoveEventStatementDisp = dispinterface;
	_CodeSnippetStatement = interface;
	_CodeSnippetStatementDisp = dispinterface;
	_CodeGotoStatement = interface;
	_CodeGotoStatementDisp = dispinterface;
	_CodeLabeledStatement = interface;
	_CodeLabeledStatementDisp = dispinterface;
	_CodeVariableDeclarationStatement = interface;
	_CodeVariableDeclarationStatementDisp = dispinterface;
	_CodeLinePragma = interface;
	_CodeLinePragmaDisp = dispinterface;
	_CodeMemberEvent = interface;
	_CodeMemberEventDisp = dispinterface;
	_CodeMemberField = interface;
	_CodeMemberFieldDisp = dispinterface;
	_CodeSnippetTypeMember = interface;
	_CodeSnippetTypeMemberDisp = dispinterface;
	_CodeMemberMethod = interface;
	_CodeMemberMethodDisp = dispinterface;
	_CodeEntryPointMethod = interface;
	_CodeEntryPointMethodDisp = dispinterface;
	_CodeMemberProperty = interface;
	_CodeMemberPropertyDisp = dispinterface;
	_CodePropertyReferenceExpression = interface;
	_CodePropertyReferenceExpressionDisp = dispinterface;
	_CodeConstructor = interface;
	_CodeConstructorDisp = dispinterface;
	_CodeTypeConstructor = interface;
	_CodeTypeConstructorDisp = dispinterface;
	_CodeTypeOfExpression = interface;
	_CodeTypeOfExpressionDisp = dispinterface;
	_CodeDirectiveCollection = interface;
	_CodeDirectiveCollectionDisp = dispinterface;
	_CodeNamespaceImport = interface;
	_CodeNamespaceImportDisp = dispinterface;
	_CodeAttributeDeclarationCollection = interface;
	_CodeAttributeDeclarationCollectionDisp = dispinterface;
	_CodeExpressionCollection = interface;
	_CodeExpressionCollectionDisp = dispinterface;
	_CodeAttributeArgumentCollection = interface;
	_CodeAttributeArgumentCollectionDisp = dispinterface;
	_CodeAttributeDeclaration = interface;
	_CodeAttributeDeclarationDisp = dispinterface;
	_CodeCatchClause = interface;
	_CodeCatchClauseDisp = dispinterface;
	_CodeStatementCollection = interface;
	_CodeStatementCollectionDisp = dispinterface;
	_CodeCatchClauseCollection = interface;
	_CodeCatchClauseCollectionDisp = dispinterface;
	_CodeChecksumPragma = interface;
	_CodeChecksumPragmaDisp = dispinterface;
	_CodeDirective = interface;
	_CodeDirectiveDisp = dispinterface;
	_CodeObject = interface;
	_CodeObjectDisp = dispinterface;
	_CodeCommentStatement = interface;
	_CodeCommentStatementDisp = dispinterface;
	_CodeNamespaceCollection = interface;
	_CodeNamespaceCollectionDisp = dispinterface;
	_CodeTypeReferenceCollection = interface;
	_CodeTypeReferenceCollectionDisp = dispinterface;
	_CodeParameterDeclarationExpressionCollection = interface;
	_CodeParameterDeclarationExpressionCollectionDisp = dispinterface;
	_CodeTypeParameterCollection = interface;
	_CodeTypeParameterCollectionDisp = dispinterface;
	_CodeTypeDeclarationCollection = interface;
	_CodeTypeDeclarationCollectionDisp = dispinterface;
	_CodeNamespaceImportCollection = interface;
	_CodeNamespaceImportCollectionDisp = dispinterface;
	_CodeRegionDirective = interface;
	_CodeRegionDirectiveDisp = dispinterface;
	_CodeSnippetCompileUnit = interface;
	_CodeSnippetCompileUnitDisp = dispinterface;
	_CodeTypeMemberCollection = interface;
	_CodeTypeMemberCollectionDisp = dispinterface;
	_CodeTypeDelegate = interface;
	_CodeTypeDelegateDisp = dispinterface;
	_CodeTypeParameter = interface;
	_CodeTypeParameterDisp = dispinterface;
	_CodeTypeReferenceExpression = interface;
	_CodeTypeReferenceExpressionDisp = dispinterface;
	_Component = interface;
	_ComponentDisp = dispinterface;
	_AttributeCollection = interface;
	_AttributeCollectionDisp = dispinterface;
	_PropertyDescriptor = interface;
	_PropertyDescriptorDisp = dispinterface;
	IComponent = interface;
	IComponentDisp = dispinterface;
	ISite = interface;
	ISiteDisp = dispinterface;
	IContainer = interface;
	IContainerDisp = dispinterface;
	_ComponentCollection = interface;
	_ComponentCollectionDisp = dispinterface;
	_EventDescriptor = interface;
	_EventDescriptorDisp = dispinterface;
	_EventDescriptorCollection = interface;
	_EventDescriptorCollectionDisp = dispinterface;
	_MemberDescriptor = interface;
	_MemberDescriptorDisp = dispinterface;
	_MarshalByValueComponent = interface;
	_MarshalByValueComponentDisp = dispinterface;
	IDesigner = interface;
	IDesignerDisp = dispinterface;
	IDesignerHost = interface;
	IDesignerHostDisp = dispinterface;
	_CommandID = interface;
	_CommandIDDisp = dispinterface;
	_ComponentChangedEventArgs = interface;
	_ComponentChangedEventArgsDisp = dispinterface;
	_ComponentChangedEventHandler = interface;
	_ComponentChangedEventHandlerDisp = dispinterface;
	_ComponentChangingEventArgs = interface;
	_ComponentChangingEventArgsDisp = dispinterface;
	_ComponentChangingEventHandler = interface;
	_ComponentChangingEventHandlerDisp = dispinterface;
	_ComponentEventArgs = interface;
	_ComponentEventArgsDisp = dispinterface;
	_ComponentEventHandler = interface;
	_ComponentEventHandlerDisp = dispinterface;
	_ComponentRenameEventArgs = interface;
	_ComponentRenameEventArgsDisp = dispinterface;
	_ComponentRenameEventHandler = interface;
	_ComponentRenameEventHandlerDisp = dispinterface;
	_DesignerTransactionCloseEventArgs = interface;
	_DesignerTransactionCloseEventArgsDisp = dispinterface;
	_DesignerTransactionCloseEventHandler = interface;
	_DesignerTransactionCloseEventHandlerDisp = dispinterface;
	_DesignerVerb = interface;
	_DesignerVerbDisp = dispinterface;
	_MenuCommand = interface;
	_MenuCommandDisp = dispinterface;
	_DesignerVerbCollection = interface;
	_DesignerVerbCollectionDisp = dispinterface;
	IComponentChangeService = interface;
	IComponentChangeServiceDisp = dispinterface;
	IServiceContainer = interface;
	IServiceContainerDisp = dispinterface;
	IEventBindingService = interface;
	IEventBindingServiceDisp = dispinterface;
	IMenuCommandService = interface;
	IMenuCommandServiceDisp = dispinterface;
	IRootDesigner = interface;
	IRootDesignerDisp = dispinterface;
	ISelectionService = interface;
	ISelectionServiceDisp = dispinterface;
	_ServiceCreatorCallback = interface;
	_ServiceCreatorCallbackDisp = dispinterface;
	_DesignerLoader = interface;
	_DesignerLoaderDisp = dispinterface;
	_PerformanceCounterManager = interface;
	_PerformanceCounterManagerDisp = dispinterface;
	_WebHeaderCollection = interface;
	_WebHeaderCollectionDisp = dispinterface;
	_WebClient = interface;
	_WebClientDisp = dispinterface;
	_StandardOleMarshalObject = interface;
	_StandardOleMarshalObjectDisp = dispinterface;

	// *********************************************************************//
	// Déclaration de CoClasses définies dans la bibliothèque de types
	// (REMARQUE: On affecte chaque CoClasse à son Interface par défaut)
	// *********************************************************************//
	CodeTypeMember = _CodeTypeMember;
	CodeTypeReference = _CodeTypeReference;
	CodeCompileUnit = _CodeCompileUnit;
	CodeTypeDeclaration = _CodeTypeDeclaration;
	CodeExpression = _CodeExpression;
	CodeNamespace = _CodeNamespace;
	CodeStatement = _CodeStatement;
	CodeDomProvider = _CodeDomProvider;
	TypeConverter = _TypeConverter;
	CodeAttributeArgument = _CodeAttributeArgument;
	CodeDefaultValueExpression = _CodeDefaultValueExpression;
	CodeDirectionExpression = _CodeDirectionExpression;
	CodeBinaryOperatorExpression = _CodeBinaryOperatorExpression;
	CodeIterationStatement = _CodeIterationStatement;
	CodePrimitiveExpression = _CodePrimitiveExpression;
	CodeThrowExceptionStatement = _CodeThrowExceptionStatement;
	CodeArrayCreateExpression = _CodeArrayCreateExpression;
	CodeBaseReferenceExpression = _CodeBaseReferenceExpression;
	CodeCastExpression = _CodeCastExpression;
	CodeDelegateCreateExpression = _CodeDelegateCreateExpression;
	CodeFieldReferenceExpression = _CodeFieldReferenceExpression;
	CodeArgumentReferenceExpression = _CodeArgumentReferenceExpression;
	CodeVariableReferenceExpression = _CodeVariableReferenceExpression;
	CodeIndexerExpression = _CodeIndexerExpression;
	CodeArrayIndexerExpression = _CodeArrayIndexerExpression;
	CodeSnippetExpression = _CodeSnippetExpression;
	CodeMethodInvokeExpression = _CodeMethodInvokeExpression;
	CodeMethodReferenceExpression = _CodeMethodReferenceExpression;
	CodeEventReferenceExpression = _CodeEventReferenceExpression;
	CodeDelegateInvokeExpression = _CodeDelegateInvokeExpression;
	CodeObjectCreateExpression = _CodeObjectCreateExpression;
	CodeParameterDeclarationExpression = _CodeParameterDeclarationExpression;
	CodePropertySetValueReferenceExpression = _CodePropertySetValueReferenceExpression;
	CodeThisReferenceExpression = _CodeThisReferenceExpression;
	CodeExpressionStatement = _CodeExpressionStatement;
	CodeCommentStatementCollection = _CodeCommentStatementCollection;
	CodeComment = _CodeComment;
	CodeMethodReturnStatement = _CodeMethodReturnStatement;
	CodeConditionStatement = _CodeConditionStatement;
	CodeTryCatchFinallyStatement = _CodeTryCatchFinallyStatement;
	CodeAssignStatement = _CodeAssignStatement;
	CodeAttachEventStatement = _CodeAttachEventStatement;
	CodeRemoveEventStatement = _CodeRemoveEventStatement;
	CodeSnippetStatement = _CodeSnippetStatement;
	CodeGotoStatement = _CodeGotoStatement;
	CodeLabeledStatement = _CodeLabeledStatement;
	CodeVariableDeclarationStatement = _CodeVariableDeclarationStatement;
	CodeLinePragma = _CodeLinePragma;
	CodeMemberEvent = _CodeMemberEvent;
	CodeMemberField = _CodeMemberField;
	CodeSnippetTypeMember = _CodeSnippetTypeMember;
	CodeMemberMethod = _CodeMemberMethod;
	CodeEntryPointMethod = _CodeEntryPointMethod;
	CodeMemberProperty = _CodeMemberProperty;
	CodePropertyReferenceExpression = _CodePropertyReferenceExpression;
	CodeConstructor = _CodeConstructor;
	CodeTypeConstructor = _CodeTypeConstructor;
	CodeTypeOfExpression = _CodeTypeOfExpression;
	CodeDirectiveCollection = _CodeDirectiveCollection;
	CodeNamespaceImport = _CodeNamespaceImport;
	CodeAttributeDeclarationCollection = _CodeAttributeDeclarationCollection;
	CodeExpressionCollection = _CodeExpressionCollection;
	CodeAttributeArgumentCollection = _CodeAttributeArgumentCollection;
	CodeAttributeDeclaration = _CodeAttributeDeclaration;
	CodeCatchClause = _CodeCatchClause;
	CodeStatementCollection = _CodeStatementCollection;
	CodeCatchClauseCollection = _CodeCatchClauseCollection;
	CodeChecksumPragma = _CodeChecksumPragma;
	CodeDirective = _CodeDirective;
	CodeObject = _CodeObject;
	CodeCommentStatement = _CodeCommentStatement;
	CodeNamespaceCollection = _CodeNamespaceCollection;
	CodeTypeReferenceCollection = _CodeTypeReferenceCollection;
	CodeParameterDeclarationExpressionCollection = _CodeParameterDeclarationExpressionCollection;
	CodeTypeParameterCollection = _CodeTypeParameterCollection;
	CodeTypeDeclarationCollection = _CodeTypeDeclarationCollection;
	CodeNamespaceImportCollection = _CodeNamespaceImportCollection;
	CodeRegionDirective = _CodeRegionDirective;
	CodeSnippetCompileUnit = _CodeSnippetCompileUnit;
	CodeTypeMemberCollection = _CodeTypeMemberCollection;
	CodeTypeDelegate = _CodeTypeDelegate;
	CodeTypeParameter = _CodeTypeParameter;
	CodeTypeReferenceExpression = _CodeTypeReferenceExpression;
	component = _Component;
	AttributeCollection = _AttributeCollection;
	PropertyDescriptor = _PropertyDescriptor;
	ComponentCollection = _ComponentCollection;
	EventDescriptor = _EventDescriptor;
	EventDescriptorCollection = _EventDescriptorCollection;
	MemberDescriptor = _MemberDescriptor;
	MarshalByValueComponent = _MarshalByValueComponent;
	CommandID = _CommandID;
	ComponentChangedEventArgs = _ComponentChangedEventArgs;
	ComponentChangedEventHandler = _ComponentChangedEventHandler;
	ComponentChangingEventArgs = _ComponentChangingEventArgs;
	ComponentChangingEventHandler = _ComponentChangingEventHandler;
	ComponentEventArgs = _ComponentEventArgs;
	ComponentEventHandler = _ComponentEventHandler;
	ComponentRenameEventArgs = _ComponentRenameEventArgs;
	ComponentRenameEventHandler = _ComponentRenameEventHandler;
	DesignerTransactionCloseEventArgs = _DesignerTransactionCloseEventArgs;
	DesignerTransactionCloseEventHandler = _DesignerTransactionCloseEventHandler;
	DesignerVerb = _DesignerVerb;
	MenuCommand = _MenuCommand;
	DesignerVerbCollection = _DesignerVerbCollection;
	ServiceCreatorCallback = _ServiceCreatorCallback;
	DesignerLoader = _DesignerLoader;
	PerformanceCounterManager = _PerformanceCounterManager;
	WebHeaderCollection = _WebHeaderCollection;
	WebClient = _WebClient;
	StandardOleMarshalObject = _StandardOleMarshalObject;

	// *********************************************************************//
	// Interface :   _CodeTypeMember
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8068AE1D-26CB-3DB6-97CD-ED83DE116C5A}
	// *********************************************************************//
	_CodeTypeMember = interface(IDispatch)
		['{8068AE1D-26CB-3DB6-97CD-ED83DE116C5A}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeMemberDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8068AE1D-26CB-3DB6-97CD-ED83DE116C5A}
	// *********************************************************************//
	_CodeTypeMemberDisp = dispinterface
		['{8068AE1D-26CB-3DB6-97CD-ED83DE116C5A}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeReference
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B6D972C6-022B-3F91-9655-E288E9D32C55}
	// *********************************************************************//
	_CodeTypeReference = interface(IDispatch)
		['{B6D972C6-022B-3F91-9655-E288E9D32C55}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeReferenceDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B6D972C6-022B-3F91-9655-E288E9D32C55}
	// *********************************************************************//
	_CodeTypeReferenceDisp = dispinterface
		['{B6D972C6-022B-3F91-9655-E288E9D32C55}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCompileUnit
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F20C263-AF67-380F-A482-9A21F7599748}
	// *********************************************************************//
	_CodeCompileUnit = interface(IDispatch)
		['{6F20C263-AF67-380F-A482-9A21F7599748}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCompileUnitDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F20C263-AF67-380F-A482-9A21F7599748}
	// *********************************************************************//
	_CodeCompileUnitDisp = dispinterface
		['{6F20C263-AF67-380F-A482-9A21F7599748}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeDeclaration
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7AA363E1-FA53-31EB-BE4A-1EB4838264F3}
	// *********************************************************************//
	_CodeTypeDeclaration = interface(IDispatch)
		['{7AA363E1-FA53-31EB-BE4A-1EB4838264F3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeDeclarationDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7AA363E1-FA53-31EB-BE4A-1EB4838264F3}
	// *********************************************************************//
	_CodeTypeDeclarationDisp = dispinterface
		['{7AA363E1-FA53-31EB-BE4A-1EB4838264F3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AD377794-864F-3421-9FB8-C684BBC1BC02}
	// *********************************************************************//
	_CodeExpression = interface(IDispatch)
		['{AD377794-864F-3421-9FB8-C684BBC1BC02}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AD377794-864F-3421-9FB8-C684BBC1BC02}
	// *********************************************************************//
	_CodeExpressionDisp = dispinterface
		['{AD377794-864F-3421-9FB8-C684BBC1BC02}']
	end;

	// *********************************************************************//
	// Interface :   _CodeNamespace
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {31ED1DCB-C007-3F96-8809-4D5E3540A7C1}
	// *********************************************************************//
	_CodeNamespace = interface(IDispatch)
		['{31ED1DCB-C007-3F96-8809-4D5E3540A7C1}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeNamespaceDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {31ED1DCB-C007-3F96-8809-4D5E3540A7C1}
	// *********************************************************************//
	_CodeNamespaceDisp = dispinterface
		['{31ED1DCB-C007-3F96-8809-4D5E3540A7C1}']
	end;

	// *********************************************************************//
	// Interface :   _CodeStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B125774D-EF66-382B-878D-2D916999B0D2}
	// *********************************************************************//
	_CodeStatement = interface(IDispatch)
		['{B125774D-EF66-382B-878D-2D916999B0D2}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B125774D-EF66-382B-878D-2D916999B0D2}
	// *********************************************************************//
	_CodeStatementDisp = dispinterface
		['{B125774D-EF66-382B-878D-2D916999B0D2}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDomProvider
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {61059E8D-1DD2-3F4B-A4C5-D566B8968FFB}
	// *********************************************************************//
	_CodeDomProvider = interface(IDispatch)
		['{61059E8D-1DD2-3F4B-A4C5-D566B8968FFB}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDomProviderDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {61059E8D-1DD2-3F4B-A4C5-D566B8968FFB}
	// *********************************************************************//
	_CodeDomProviderDisp = dispinterface
		['{61059E8D-1DD2-3F4B-A4C5-D566B8968FFB}']
	end;

	// *********************************************************************//
	// Interface :   _TypeConverter
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05241989-96C5-3BF9-AB9B-37E261C1B8F8}
	// *********************************************************************//
	_TypeConverter = interface(IDispatch)
		['{05241989-96C5-3BF9-AB9B-37E261C1B8F8}']
	end;

	// *********************************************************************//
	// DispIntf :    _TypeConverterDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05241989-96C5-3BF9-AB9B-37E261C1B8F8}
	// *********************************************************************//
	_TypeConverterDisp = dispinterface
		['{05241989-96C5-3BF9-AB9B-37E261C1B8F8}']
	end;

	// *********************************************************************//
	// Interface :   ITypeDescriptorContext
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {5CBAE170-8759-3B8A-B919-E12FB86AD1F3}
	// *********************************************************************//
	ITypeDescriptorContext = interface(IDispatch)
		['{5CBAE170-8759-3B8A-B919-E12FB86AD1F3}']
		function Get_Container: IContainer; safecall;
		function Get_Instance: OleVariant; safecall;
		function Get_PropertyDescriptor: _PropertyDescriptor; safecall;
		function OnComponentChanging: WordBool; safecall;
		procedure OnComponentChanged; safecall;
		property Container: IContainer read Get_Container;
		property Instance: OleVariant read Get_Instance;
		property PropertyDescriptor: _PropertyDescriptor read Get_PropertyDescriptor;
	end;

	// *********************************************************************//
	// DispIntf :    ITypeDescriptorContextDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {5CBAE170-8759-3B8A-B919-E12FB86AD1F3}
	// *********************************************************************//
	ITypeDescriptorContextDisp = dispinterface
		['{5CBAE170-8759-3B8A-B919-E12FB86AD1F3}']
		property Container: IContainer readonly dispid 1610743808;
		property Instance: OleVariant readonly dispid 1610743809;
		property PropertyDescriptor: _PropertyDescriptor readonly dispid 1610743810;
		function OnComponentChanging: WordBool; dispid 1610743811;
		procedure OnComponentChanged; dispid 1610743812;
	end;

	// *********************************************************************//
	// Interface :   _CodeAttributeArgument
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {02EFD952-FF8C-3B72-8C33-739A506D53D9}
	// *********************************************************************//
	_CodeAttributeArgument = interface(IDispatch)
		['{02EFD952-FF8C-3B72-8C33-739A506D53D9}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAttributeArgumentDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {02EFD952-FF8C-3B72-8C33-739A506D53D9}
	// *********************************************************************//
	_CodeAttributeArgumentDisp = dispinterface
		['{02EFD952-FF8C-3B72-8C33-739A506D53D9}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDefaultValueExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EA9E1DD2-EF9A-3570-AE1A-2F625F594C3B}
	// *********************************************************************//
	_CodeDefaultValueExpression = interface(IDispatch)
		['{EA9E1DD2-EF9A-3570-AE1A-2F625F594C3B}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDefaultValueExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EA9E1DD2-EF9A-3570-AE1A-2F625F594C3B}
	// *********************************************************************//
	_CodeDefaultValueExpressionDisp = dispinterface
		['{EA9E1DD2-EF9A-3570-AE1A-2F625F594C3B}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDirectionExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {11EDAF3B-144E-32C8-8BE0-81D40A950656}
	// *********************************************************************//
	_CodeDirectionExpression = interface(IDispatch)
		['{11EDAF3B-144E-32C8-8BE0-81D40A950656}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDirectionExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {11EDAF3B-144E-32C8-8BE0-81D40A950656}
	// *********************************************************************//
	_CodeDirectionExpressionDisp = dispinterface
		['{11EDAF3B-144E-32C8-8BE0-81D40A950656}']
	end;

	// *********************************************************************//
	// Interface :   _CodeBinaryOperatorExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A22929C9-D301-3F5B-98B7-844FDBA1DEDF}
	// *********************************************************************//
	_CodeBinaryOperatorExpression = interface(IDispatch)
		['{A22929C9-D301-3F5B-98B7-844FDBA1DEDF}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeBinaryOperatorExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A22929C9-D301-3F5B-98B7-844FDBA1DEDF}
	// *********************************************************************//
	_CodeBinaryOperatorExpressionDisp = dispinterface
		['{A22929C9-D301-3F5B-98B7-844FDBA1DEDF}']
	end;

	// *********************************************************************//
	// Interface :   _CodeIterationStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B16F7137-C0E7-3ECF-9652-FB1EA947E44E}
	// *********************************************************************//
	_CodeIterationStatement = interface(IDispatch)
		['{B16F7137-C0E7-3ECF-9652-FB1EA947E44E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeIterationStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B16F7137-C0E7-3ECF-9652-FB1EA947E44E}
	// *********************************************************************//
	_CodeIterationStatementDisp = dispinterface
		['{B16F7137-C0E7-3ECF-9652-FB1EA947E44E}']
	end;

	// *********************************************************************//
	// Interface :   _CodePrimitiveExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {175BB49A-4CBE-38B3-8C6C-1B0145EDABB7}
	// *********************************************************************//
	_CodePrimitiveExpression = interface(IDispatch)
		['{175BB49A-4CBE-38B3-8C6C-1B0145EDABB7}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodePrimitiveExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {175BB49A-4CBE-38B3-8C6C-1B0145EDABB7}
	// *********************************************************************//
	_CodePrimitiveExpressionDisp = dispinterface
		['{175BB49A-4CBE-38B3-8C6C-1B0145EDABB7}']
	end;

	// *********************************************************************//
	// Interface :   _CodeThrowExceptionStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {12350E95-6F4E-30F0-9343-72F1C64380A0}
	// *********************************************************************//
	_CodeThrowExceptionStatement = interface(IDispatch)
		['{12350E95-6F4E-30F0-9343-72F1C64380A0}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeThrowExceptionStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {12350E95-6F4E-30F0-9343-72F1C64380A0}
	// *********************************************************************//
	_CodeThrowExceptionStatementDisp = dispinterface
		['{12350E95-6F4E-30F0-9343-72F1C64380A0}']
	end;

	// *********************************************************************//
	// Interface :   _CodeArrayCreateExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F7955E55-7F3B-3277-AA0C-F62AA615676D}
	// *********************************************************************//
	_CodeArrayCreateExpression = interface(IDispatch)
		['{F7955E55-7F3B-3277-AA0C-F62AA615676D}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeArrayCreateExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F7955E55-7F3B-3277-AA0C-F62AA615676D}
	// *********************************************************************//
	_CodeArrayCreateExpressionDisp = dispinterface
		['{F7955E55-7F3B-3277-AA0C-F62AA615676D}']
	end;

	// *********************************************************************//
	// Interface :   _CodeBaseReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {45E29CA6-670A-3B13-9557-4E5903056BF3}
	// *********************************************************************//
	_CodeBaseReferenceExpression = interface(IDispatch)
		['{45E29CA6-670A-3B13-9557-4E5903056BF3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeBaseReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {45E29CA6-670A-3B13-9557-4E5903056BF3}
	// *********************************************************************//
	_CodeBaseReferenceExpressionDisp = dispinterface
		['{45E29CA6-670A-3B13-9557-4E5903056BF3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCastExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {90BED8ED-21E3-31FE-8F02-C929BA4FB0AC}
	// *********************************************************************//
	_CodeCastExpression = interface(IDispatch)
		['{90BED8ED-21E3-31FE-8F02-C929BA4FB0AC}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCastExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {90BED8ED-21E3-31FE-8F02-C929BA4FB0AC}
	// *********************************************************************//
	_CodeCastExpressionDisp = dispinterface
		['{90BED8ED-21E3-31FE-8F02-C929BA4FB0AC}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDelegateCreateExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {D14E12C1-E1D1-3B74-A3AF-021A5A268FBE}
	// *********************************************************************//
	_CodeDelegateCreateExpression = interface(IDispatch)
		['{D14E12C1-E1D1-3B74-A3AF-021A5A268FBE}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDelegateCreateExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {D14E12C1-E1D1-3B74-A3AF-021A5A268FBE}
	// *********************************************************************//
	_CodeDelegateCreateExpressionDisp = dispinterface
		['{D14E12C1-E1D1-3B74-A3AF-021A5A268FBE}']
	end;

	// *********************************************************************//
	// Interface :   _CodeFieldReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {82D57B2B-C639-32A0-89B4-62A0C29DD64E}
	// *********************************************************************//
	_CodeFieldReferenceExpression = interface(IDispatch)
		['{82D57B2B-C639-32A0-89B4-62A0C29DD64E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeFieldReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {82D57B2B-C639-32A0-89B4-62A0C29DD64E}
	// *********************************************************************//
	_CodeFieldReferenceExpressionDisp = dispinterface
		['{82D57B2B-C639-32A0-89B4-62A0C29DD64E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeArgumentReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A52B85C6-5370-35C9-A04A-04A92013862C}
	// *********************************************************************//
	_CodeArgumentReferenceExpression = interface(IDispatch)
		['{A52B85C6-5370-35C9-A04A-04A92013862C}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeArgumentReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A52B85C6-5370-35C9-A04A-04A92013862C}
	// *********************************************************************//
	_CodeArgumentReferenceExpressionDisp = dispinterface
		['{A52B85C6-5370-35C9-A04A-04A92013862C}']
	end;

	// *********************************************************************//
	// Interface :   _CodeVariableReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {54B54936-A71C-3A45-B982-2C484E7BCF86}
	// *********************************************************************//
	_CodeVariableReferenceExpression = interface(IDispatch)
		['{54B54936-A71C-3A45-B982-2C484E7BCF86}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeVariableReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {54B54936-A71C-3A45-B982-2C484E7BCF86}
	// *********************************************************************//
	_CodeVariableReferenceExpressionDisp = dispinterface
		['{54B54936-A71C-3A45-B982-2C484E7BCF86}']
	end;

	// *********************************************************************//
	// Interface :   _CodeIndexerExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C92C323F-8601-34D4-A2D6-F5E2653DB456}
	// *********************************************************************//
	_CodeIndexerExpression = interface(IDispatch)
		['{C92C323F-8601-34D4-A2D6-F5E2653DB456}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeIndexerExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C92C323F-8601-34D4-A2D6-F5E2653DB456}
	// *********************************************************************//
	_CodeIndexerExpressionDisp = dispinterface
		['{C92C323F-8601-34D4-A2D6-F5E2653DB456}']
	end;

	// *********************************************************************//
	// Interface :   _CodeArrayIndexerExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {732748F5-5256-327B-A7E5-2000B07F21B3}
	// *********************************************************************//
	_CodeArrayIndexerExpression = interface(IDispatch)
		['{732748F5-5256-327B-A7E5-2000B07F21B3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeArrayIndexerExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {732748F5-5256-327B-A7E5-2000B07F21B3}
	// *********************************************************************//
	_CodeArrayIndexerExpressionDisp = dispinterface
		['{732748F5-5256-327B-A7E5-2000B07F21B3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeSnippetExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {9F3E3CD1-8082-31E9-851C-3E177E56A87B}
	// *********************************************************************//
	_CodeSnippetExpression = interface(IDispatch)
		['{9F3E3CD1-8082-31E9-851C-3E177E56A87B}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeSnippetExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {9F3E3CD1-8082-31E9-851C-3E177E56A87B}
	// *********************************************************************//
	_CodeSnippetExpressionDisp = dispinterface
		['{9F3E3CD1-8082-31E9-851C-3E177E56A87B}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMethodInvokeExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FFE1F142-85CF-3353-8512-EE73775E9C4C}
	// *********************************************************************//
	_CodeMethodInvokeExpression = interface(IDispatch)
		['{FFE1F142-85CF-3353-8512-EE73775E9C4C}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMethodInvokeExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FFE1F142-85CF-3353-8512-EE73775E9C4C}
	// *********************************************************************//
	_CodeMethodInvokeExpressionDisp = dispinterface
		['{FFE1F142-85CF-3353-8512-EE73775E9C4C}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMethodReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CBDF02F4-A9F4-33C0-8B24-275008890DCB}
	// *********************************************************************//
	_CodeMethodReferenceExpression = interface(IDispatch)
		['{CBDF02F4-A9F4-33C0-8B24-275008890DCB}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMethodReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CBDF02F4-A9F4-33C0-8B24-275008890DCB}
	// *********************************************************************//
	_CodeMethodReferenceExpressionDisp = dispinterface
		['{CBDF02F4-A9F4-33C0-8B24-275008890DCB}']
	end;

	// *********************************************************************//
	// Interface :   _CodeEventReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {35872687-5A11-34D7-85AB-865830A3BDEE}
	// *********************************************************************//
	_CodeEventReferenceExpression = interface(IDispatch)
		['{35872687-5A11-34D7-85AB-865830A3BDEE}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeEventReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {35872687-5A11-34D7-85AB-865830A3BDEE}
	// *********************************************************************//
	_CodeEventReferenceExpressionDisp = dispinterface
		['{35872687-5A11-34D7-85AB-865830A3BDEE}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDelegateInvokeExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F6C3482-8900-36EA-B621-943534E82C73}
	// *********************************************************************//
	_CodeDelegateInvokeExpression = interface(IDispatch)
		['{6F6C3482-8900-36EA-B621-943534E82C73}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDelegateInvokeExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F6C3482-8900-36EA-B621-943534E82C73}
	// *********************************************************************//
	_CodeDelegateInvokeExpressionDisp = dispinterface
		['{6F6C3482-8900-36EA-B621-943534E82C73}']
	end;

	// *********************************************************************//
	// Interface :   _CodeObjectCreateExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CFE5E5E9-745F-348B-A7E6-38A46D1A20E0}
	// *********************************************************************//
	_CodeObjectCreateExpression = interface(IDispatch)
		['{CFE5E5E9-745F-348B-A7E6-38A46D1A20E0}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeObjectCreateExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CFE5E5E9-745F-348B-A7E6-38A46D1A20E0}
	// *********************************************************************//
	_CodeObjectCreateExpressionDisp = dispinterface
		['{CFE5E5E9-745F-348B-A7E6-38A46D1A20E0}']
	end;

	// *********************************************************************//
	// Interface :   _CodeParameterDeclarationExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EE96565B-2B1A-33C6-BA07-B63158F1C8C4}
	// *********************************************************************//
	_CodeParameterDeclarationExpression = interface(IDispatch)
		['{EE96565B-2B1A-33C6-BA07-B63158F1C8C4}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeParameterDeclarationExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EE96565B-2B1A-33C6-BA07-B63158F1C8C4}
	// *********************************************************************//
	_CodeParameterDeclarationExpressionDisp = dispinterface
		['{EE96565B-2B1A-33C6-BA07-B63158F1C8C4}']
	end;

	// *********************************************************************//
	// Interface :   _CodePropertySetValueReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {2EE13FA1-8A02-3573-9AC9-4FEBD2CEAB45}
	// *********************************************************************//
	_CodePropertySetValueReferenceExpression = interface(IDispatch)
		['{2EE13FA1-8A02-3573-9AC9-4FEBD2CEAB45}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodePropertySetValueReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {2EE13FA1-8A02-3573-9AC9-4FEBD2CEAB45}
	// *********************************************************************//
	_CodePropertySetValueReferenceExpressionDisp = dispinterface
		['{2EE13FA1-8A02-3573-9AC9-4FEBD2CEAB45}']
	end;

	// *********************************************************************//
	// Interface :   _CodeThisReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {3B4A1A6B-8E65-355D-B93A-E6AB753B2401}
	// *********************************************************************//
	_CodeThisReferenceExpression = interface(IDispatch)
		['{3B4A1A6B-8E65-355D-B93A-E6AB753B2401}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeThisReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {3B4A1A6B-8E65-355D-B93A-E6AB753B2401}
	// *********************************************************************//
	_CodeThisReferenceExpressionDisp = dispinterface
		['{3B4A1A6B-8E65-355D-B93A-E6AB753B2401}']
	end;

	// *********************************************************************//
	// Interface :   _CodeExpressionStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CEA240AF-60C5-3C69-9DA1-DA3F9A6D7B3C}
	// *********************************************************************//
	_CodeExpressionStatement = interface(IDispatch)
		['{CEA240AF-60C5-3C69-9DA1-DA3F9A6D7B3C}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeExpressionStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {CEA240AF-60C5-3C69-9DA1-DA3F9A6D7B3C}
	// *********************************************************************//
	_CodeExpressionStatementDisp = dispinterface
		['{CEA240AF-60C5-3C69-9DA1-DA3F9A6D7B3C}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCommentStatementCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E34CEB72-8F86-333D-AEDA-069221DF6A1A}
	// *********************************************************************//
	_CodeCommentStatementCollection = interface(IDispatch)
		['{E34CEB72-8F86-333D-AEDA-069221DF6A1A}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCommentStatementCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E34CEB72-8F86-333D-AEDA-069221DF6A1A}
	// *********************************************************************//
	_CodeCommentStatementCollectionDisp = dispinterface
		['{E34CEB72-8F86-333D-AEDA-069221DF6A1A}']
	end;

	// *********************************************************************//
	// Interface :   _CodeComment
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C94F39B3-436F-3711-9CB0-91C6299B62A2}
	// *********************************************************************//
	_CodeComment = interface(IDispatch)
		['{C94F39B3-436F-3711-9CB0-91C6299B62A2}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCommentDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C94F39B3-436F-3711-9CB0-91C6299B62A2}
	// *********************************************************************//
	_CodeCommentDisp = dispinterface
		['{C94F39B3-436F-3711-9CB0-91C6299B62A2}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMethodReturnStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {851D821B-1E0C-3E91-832D-BA593523F566}
	// *********************************************************************//
	_CodeMethodReturnStatement = interface(IDispatch)
		['{851D821B-1E0C-3E91-832D-BA593523F566}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMethodReturnStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {851D821B-1E0C-3E91-832D-BA593523F566}
	// *********************************************************************//
	_CodeMethodReturnStatementDisp = dispinterface
		['{851D821B-1E0C-3E91-832D-BA593523F566}']
	end;

	// *********************************************************************//
	// Interface :   _CodeConditionStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {69904B31-5FB5-39BF-83B0-5DDFA1F26D71}
	// *********************************************************************//
	_CodeConditionStatement = interface(IDispatch)
		['{69904B31-5FB5-39BF-83B0-5DDFA1F26D71}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeConditionStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {69904B31-5FB5-39BF-83B0-5DDFA1F26D71}
	// *********************************************************************//
	_CodeConditionStatementDisp = dispinterface
		['{69904B31-5FB5-39BF-83B0-5DDFA1F26D71}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTryCatchFinallyStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8FD0F76A-29BF-3982-8335-C9B44ABF31C3}
	// *********************************************************************//
	_CodeTryCatchFinallyStatement = interface(IDispatch)
		['{8FD0F76A-29BF-3982-8335-C9B44ABF31C3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTryCatchFinallyStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8FD0F76A-29BF-3982-8335-C9B44ABF31C3}
	// *********************************************************************//
	_CodeTryCatchFinallyStatementDisp = dispinterface
		['{8FD0F76A-29BF-3982-8335-C9B44ABF31C3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeAssignStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E2024DE0-DC21-305D-8761-6C31F2177FB0}
	// *********************************************************************//
	_CodeAssignStatement = interface(IDispatch)
		['{E2024DE0-DC21-305D-8761-6C31F2177FB0}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAssignStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E2024DE0-DC21-305D-8761-6C31F2177FB0}
	// *********************************************************************//
	_CodeAssignStatementDisp = dispinterface
		['{E2024DE0-DC21-305D-8761-6C31F2177FB0}']
	end;

	// *********************************************************************//
	// Interface :   _CodeAttachEventStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F7BC47E9-706C-3AA7-B1BA-8AB95188FA11}
	// *********************************************************************//
	_CodeAttachEventStatement = interface(IDispatch)
		['{F7BC47E9-706C-3AA7-B1BA-8AB95188FA11}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAttachEventStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F7BC47E9-706C-3AA7-B1BA-8AB95188FA11}
	// *********************************************************************//
	_CodeAttachEventStatementDisp = dispinterface
		['{F7BC47E9-706C-3AA7-B1BA-8AB95188FA11}']
	end;

	// *********************************************************************//
	// Interface :   _CodeRemoveEventStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {853BC437-CA6E-375D-BCBB-818E917D9691}
	// *********************************************************************//
	_CodeRemoveEventStatement = interface(IDispatch)
		['{853BC437-CA6E-375D-BCBB-818E917D9691}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeRemoveEventStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {853BC437-CA6E-375D-BCBB-818E917D9691}
	// *********************************************************************//
	_CodeRemoveEventStatementDisp = dispinterface
		['{853BC437-CA6E-375D-BCBB-818E917D9691}']
	end;

	// *********************************************************************//
	// Interface :   _CodeSnippetStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B4B00613-C48B-3FA9-B8F6-A527EC6F21C3}
	// *********************************************************************//
	_CodeSnippetStatement = interface(IDispatch)
		['{B4B00613-C48B-3FA9-B8F6-A527EC6F21C3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeSnippetStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B4B00613-C48B-3FA9-B8F6-A527EC6F21C3}
	// *********************************************************************//
	_CodeSnippetStatementDisp = dispinterface
		['{B4B00613-C48B-3FA9-B8F6-A527EC6F21C3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeGotoStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8F1BAED9-52EC-3545-9CF0-6ED71A76A5CA}
	// *********************************************************************//
	_CodeGotoStatement = interface(IDispatch)
		['{8F1BAED9-52EC-3545-9CF0-6ED71A76A5CA}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeGotoStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {8F1BAED9-52EC-3545-9CF0-6ED71A76A5CA}
	// *********************************************************************//
	_CodeGotoStatementDisp = dispinterface
		['{8F1BAED9-52EC-3545-9CF0-6ED71A76A5CA}']
	end;

	// *********************************************************************//
	// Interface :   _CodeLabeledStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {56699CCA-FD8D-3AD2-9643-149BAD87FD60}
	// *********************************************************************//
	_CodeLabeledStatement = interface(IDispatch)
		['{56699CCA-FD8D-3AD2-9643-149BAD87FD60}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeLabeledStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {56699CCA-FD8D-3AD2-9643-149BAD87FD60}
	// *********************************************************************//
	_CodeLabeledStatementDisp = dispinterface
		['{56699CCA-FD8D-3AD2-9643-149BAD87FD60}']
	end;

	// *********************************************************************//
	// Interface :   _CodeVariableDeclarationStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4192A87C-5C57-3879-8624-AF5CA2ED9EB2}
	// *********************************************************************//
	_CodeVariableDeclarationStatement = interface(IDispatch)
		['{4192A87C-5C57-3879-8624-AF5CA2ED9EB2}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeVariableDeclarationStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4192A87C-5C57-3879-8624-AF5CA2ED9EB2}
	// *********************************************************************//
	_CodeVariableDeclarationStatementDisp = dispinterface
		['{4192A87C-5C57-3879-8624-AF5CA2ED9EB2}']
	end;

	// *********************************************************************//
	// Interface :   _CodeLinePragma
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {1B52DED6-92F3-3B4F-851C-AB1F647582A3}
	// *********************************************************************//
	_CodeLinePragma = interface(IDispatch)
		['{1B52DED6-92F3-3B4F-851C-AB1F647582A3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeLinePragmaDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {1B52DED6-92F3-3B4F-851C-AB1F647582A3}
	// *********************************************************************//
	_CodeLinePragmaDisp = dispinterface
		['{1B52DED6-92F3-3B4F-851C-AB1F647582A3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMemberEvent
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E1A7EA9F-5D43-3FA9-AFBC-9A2BFDA84B65}
	// *********************************************************************//
	_CodeMemberEvent = interface(IDispatch)
		['{E1A7EA9F-5D43-3FA9-AFBC-9A2BFDA84B65}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMemberEventDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {E1A7EA9F-5D43-3FA9-AFBC-9A2BFDA84B65}
	// *********************************************************************//
	_CodeMemberEventDisp = dispinterface
		['{E1A7EA9F-5D43-3FA9-AFBC-9A2BFDA84B65}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMemberField
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EEF50D17-7AA6-3E14-96C6-DD90FE5BAA1E}
	// *********************************************************************//
	_CodeMemberField = interface(IDispatch)
		['{EEF50D17-7AA6-3E14-96C6-DD90FE5BAA1E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMemberFieldDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EEF50D17-7AA6-3E14-96C6-DD90FE5BAA1E}
	// *********************************************************************//
	_CodeMemberFieldDisp = dispinterface
		['{EEF50D17-7AA6-3E14-96C6-DD90FE5BAA1E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeSnippetTypeMember
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {575BF8D0-7A9D-39EB-81F9-AA2BEBA890FA}
	// *********************************************************************//
	_CodeSnippetTypeMember = interface(IDispatch)
		['{575BF8D0-7A9D-39EB-81F9-AA2BEBA890FA}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeSnippetTypeMemberDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {575BF8D0-7A9D-39EB-81F9-AA2BEBA890FA}
	// *********************************************************************//
	_CodeSnippetTypeMemberDisp = dispinterface
		['{575BF8D0-7A9D-39EB-81F9-AA2BEBA890FA}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMemberMethod
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {95C2EE26-4247-3DDC-8056-97353F10DE8F}
	// *********************************************************************//
	_CodeMemberMethod = interface(IDispatch)
		['{95C2EE26-4247-3DDC-8056-97353F10DE8F}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMemberMethodDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {95C2EE26-4247-3DDC-8056-97353F10DE8F}
	// *********************************************************************//
	_CodeMemberMethodDisp = dispinterface
		['{95C2EE26-4247-3DDC-8056-97353F10DE8F}']
	end;

	// *********************************************************************//
	// Interface :   _CodeEntryPointMethod
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7CD4EF19-27EB-399E-8ED2-C6647A99C03E}
	// *********************************************************************//
	_CodeEntryPointMethod = interface(IDispatch)
		['{7CD4EF19-27EB-399E-8ED2-C6647A99C03E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeEntryPointMethodDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7CD4EF19-27EB-399E-8ED2-C6647A99C03E}
	// *********************************************************************//
	_CodeEntryPointMethodDisp = dispinterface
		['{7CD4EF19-27EB-399E-8ED2-C6647A99C03E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeMemberProperty
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {802E2ACC-A7F8-3CA9-9114-F49998BEBE6E}
	// *********************************************************************//
	_CodeMemberProperty = interface(IDispatch)
		['{802E2ACC-A7F8-3CA9-9114-F49998BEBE6E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeMemberPropertyDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {802E2ACC-A7F8-3CA9-9114-F49998BEBE6E}
	// *********************************************************************//
	_CodeMemberPropertyDisp = dispinterface
		['{802E2ACC-A7F8-3CA9-9114-F49998BEBE6E}']
	end;

	// *********************************************************************//
	// Interface :   _CodePropertyReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F8D64802-F9B7-3095-A641-D31E6E9F87B1}
	// *********************************************************************//
	_CodePropertyReferenceExpression = interface(IDispatch)
		['{F8D64802-F9B7-3095-A641-D31E6E9F87B1}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodePropertyReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F8D64802-F9B7-3095-A641-D31E6E9F87B1}
	// *********************************************************************//
	_CodePropertyReferenceExpressionDisp = dispinterface
		['{F8D64802-F9B7-3095-A641-D31E6E9F87B1}']
	end;

	// *********************************************************************//
	// Interface :   _CodeConstructor
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {5A33C771-806E-337D-AE1F-66B523FC49BF}
	// *********************************************************************//
	_CodeConstructor = interface(IDispatch)
		['{5A33C771-806E-337D-AE1F-66B523FC49BF}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeConstructorDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {5A33C771-806E-337D-AE1F-66B523FC49BF}
	// *********************************************************************//
	_CodeConstructorDisp = dispinterface
		['{5A33C771-806E-337D-AE1F-66B523FC49BF}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeConstructor
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {261AD877-0F22-33DE-9A3A-31F5DA424B30}
	// *********************************************************************//
	_CodeTypeConstructor = interface(IDispatch)
		['{261AD877-0F22-33DE-9A3A-31F5DA424B30}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeConstructorDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {261AD877-0F22-33DE-9A3A-31F5DA424B30}
	// *********************************************************************//
	_CodeTypeConstructorDisp = dispinterface
		['{261AD877-0F22-33DE-9A3A-31F5DA424B30}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeOfExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {12CBCE8E-75FF-312F-81B9-7FBC6212090B}
	// *********************************************************************//
	_CodeTypeOfExpression = interface(IDispatch)
		['{12CBCE8E-75FF-312F-81B9-7FBC6212090B}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeOfExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {12CBCE8E-75FF-312F-81B9-7FBC6212090B}
	// *********************************************************************//
	_CodeTypeOfExpressionDisp = dispinterface
		['{12CBCE8E-75FF-312F-81B9-7FBC6212090B}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDirectiveCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EEFBDD27-4904-3E90-ACFC-624164CB45DD}
	// *********************************************************************//
	_CodeDirectiveCollection = interface(IDispatch)
		['{EEFBDD27-4904-3E90-ACFC-624164CB45DD}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDirectiveCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EEFBDD27-4904-3E90-ACFC-624164CB45DD}
	// *********************************************************************//
	_CodeDirectiveCollectionDisp = dispinterface
		['{EEFBDD27-4904-3E90-ACFC-624164CB45DD}']
	end;

	// *********************************************************************//
	// Interface :   _CodeNamespaceImport
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {34418787-726B-3E74-AEED-C01397FC707D}
	// *********************************************************************//
	_CodeNamespaceImport = interface(IDispatch)
		['{34418787-726B-3E74-AEED-C01397FC707D}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeNamespaceImportDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {34418787-726B-3E74-AEED-C01397FC707D}
	// *********************************************************************//
	_CodeNamespaceImportDisp = dispinterface
		['{34418787-726B-3E74-AEED-C01397FC707D}']
	end;

	// *********************************************************************//
	// Interface :   _CodeAttributeDeclarationCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7E9ACA22-637C-3F88-A931-AAF36A4F9A6B}
	// *********************************************************************//
	_CodeAttributeDeclarationCollection = interface(IDispatch)
		['{7E9ACA22-637C-3F88-A931-AAF36A4F9A6B}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAttributeDeclarationCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7E9ACA22-637C-3F88-A931-AAF36A4F9A6B}
	// *********************************************************************//
	_CodeAttributeDeclarationCollectionDisp = dispinterface
		['{7E9ACA22-637C-3F88-A931-AAF36A4F9A6B}']
	end;

	// *********************************************************************//
	// Interface :   _CodeExpressionCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AF72CC74-2275-362A-9141-A4A79D596F39}
	// *********************************************************************//
	_CodeExpressionCollection = interface(IDispatch)
		['{AF72CC74-2275-362A-9141-A4A79D596F39}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeExpressionCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AF72CC74-2275-362A-9141-A4A79D596F39}
	// *********************************************************************//
	_CodeExpressionCollectionDisp = dispinterface
		['{AF72CC74-2275-362A-9141-A4A79D596F39}']
	end;

	// *********************************************************************//
	// Interface :   _CodeAttributeArgumentCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FE84E484-A7EC-3D15-B5E2-EDC2DE2DB42E}
	// *********************************************************************//
	_CodeAttributeArgumentCollection = interface(IDispatch)
		['{FE84E484-A7EC-3D15-B5E2-EDC2DE2DB42E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAttributeArgumentCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FE84E484-A7EC-3D15-B5E2-EDC2DE2DB42E}
	// *********************************************************************//
	_CodeAttributeArgumentCollectionDisp = dispinterface
		['{FE84E484-A7EC-3D15-B5E2-EDC2DE2DB42E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeAttributeDeclaration
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EF72D021-2C6D-3E33-9442-574BFD6E0871}
	// *********************************************************************//
	_CodeAttributeDeclaration = interface(IDispatch)
		['{EF72D021-2C6D-3E33-9442-574BFD6E0871}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeAttributeDeclarationDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EF72D021-2C6D-3E33-9442-574BFD6E0871}
	// *********************************************************************//
	_CodeAttributeDeclarationDisp = dispinterface
		['{EF72D021-2C6D-3E33-9442-574BFD6E0871}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCatchClause
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {609C7788-BDB0-364C-92E3-FC16AC613430}
	// *********************************************************************//
	_CodeCatchClause = interface(IDispatch)
		['{609C7788-BDB0-364C-92E3-FC16AC613430}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCatchClauseDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {609C7788-BDB0-364C-92E3-FC16AC613430}
	// *********************************************************************//
	_CodeCatchClauseDisp = dispinterface
		['{609C7788-BDB0-364C-92E3-FC16AC613430}']
	end;

	// *********************************************************************//
	// Interface :   _CodeStatementCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4B9A5032-4B8C-3DE6-997C-C38B4B3AF26A}
	// *********************************************************************//
	_CodeStatementCollection = interface(IDispatch)
		['{4B9A5032-4B8C-3DE6-997C-C38B4B3AF26A}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeStatementCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4B9A5032-4B8C-3DE6-997C-C38B4B3AF26A}
	// *********************************************************************//
	_CodeStatementCollectionDisp = dispinterface
		['{4B9A5032-4B8C-3DE6-997C-C38B4B3AF26A}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCatchClauseCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FF5E1CD9-0478-34A4-9B9C-7C80BCB1A725}
	// *********************************************************************//
	_CodeCatchClauseCollection = interface(IDispatch)
		['{FF5E1CD9-0478-34A4-9B9C-7C80BCB1A725}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCatchClauseCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FF5E1CD9-0478-34A4-9B9C-7C80BCB1A725}
	// *********************************************************************//
	_CodeCatchClauseCollectionDisp = dispinterface
		['{FF5E1CD9-0478-34A4-9B9C-7C80BCB1A725}']
	end;

	// *********************************************************************//
	// Interface :   _CodeChecksumPragma
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7EB20114-E822-358C-BDAB-DCF9E5090F23}
	// *********************************************************************//
	_CodeChecksumPragma = interface(IDispatch)
		['{7EB20114-E822-358C-BDAB-DCF9E5090F23}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeChecksumPragmaDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7EB20114-E822-358C-BDAB-DCF9E5090F23}
	// *********************************************************************//
	_CodeChecksumPragmaDisp = dispinterface
		['{7EB20114-E822-358C-BDAB-DCF9E5090F23}']
	end;

	// *********************************************************************//
	// Interface :   _CodeDirective
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {767E752E-2315-35CF-9652-7FC46AE870D3}
	// *********************************************************************//
	_CodeDirective = interface(IDispatch)
		['{767E752E-2315-35CF-9652-7FC46AE870D3}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeDirectiveDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {767E752E-2315-35CF-9652-7FC46AE870D3}
	// *********************************************************************//
	_CodeDirectiveDisp = dispinterface
		['{767E752E-2315-35CF-9652-7FC46AE870D3}']
	end;

	// *********************************************************************//
	// Interface :   _CodeObject
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EE499EFD-22E2-3740-A64A-2AB010099C01}
	// *********************************************************************//
	_CodeObject = interface(IDispatch)
		['{EE499EFD-22E2-3740-A64A-2AB010099C01}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeObjectDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {EE499EFD-22E2-3740-A64A-2AB010099C01}
	// *********************************************************************//
	_CodeObjectDisp = dispinterface
		['{EE499EFD-22E2-3740-A64A-2AB010099C01}']
	end;

	// *********************************************************************//
	// Interface :   _CodeCommentStatement
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {0C13F8B9-F2E0-3918-A33E-3E491BDC529E}
	// *********************************************************************//
	_CodeCommentStatement = interface(IDispatch)
		['{0C13F8B9-F2E0-3918-A33E-3E491BDC529E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeCommentStatementDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {0C13F8B9-F2E0-3918-A33E-3E491BDC529E}
	// *********************************************************************//
	_CodeCommentStatementDisp = dispinterface
		['{0C13F8B9-F2E0-3918-A33E-3E491BDC529E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeNamespaceCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F5E54F16-ADE3-3B5D-8B05-1F9803557905}
	// *********************************************************************//
	_CodeNamespaceCollection = interface(IDispatch)
		['{F5E54F16-ADE3-3B5D-8B05-1F9803557905}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeNamespaceCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F5E54F16-ADE3-3B5D-8B05-1F9803557905}
	// *********************************************************************//
	_CodeNamespaceCollectionDisp = dispinterface
		['{F5E54F16-ADE3-3B5D-8B05-1F9803557905}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeReferenceCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {68A04561-D0A0-3EEB-B904-462DC4EB5531}
	// *********************************************************************//
	_CodeTypeReferenceCollection = interface(IDispatch)
		['{68A04561-D0A0-3EEB-B904-462DC4EB5531}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeReferenceCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {68A04561-D0A0-3EEB-B904-462DC4EB5531}
	// *********************************************************************//
	_CodeTypeReferenceCollectionDisp = dispinterface
		['{68A04561-D0A0-3EEB-B904-462DC4EB5531}']
	end;

	// *********************************************************************//
	// Interface :   _CodeParameterDeclarationExpressionCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05192769-7D6A-3C8C-94C2-DFA668F61088}
	// *********************************************************************//
	_CodeParameterDeclarationExpressionCollection = interface(IDispatch)
		['{05192769-7D6A-3C8C-94C2-DFA668F61088}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeParameterDeclarationExpressionCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05192769-7D6A-3C8C-94C2-DFA668F61088}
	// *********************************************************************//
	_CodeParameterDeclarationExpressionCollectionDisp = dispinterface
		['{05192769-7D6A-3C8C-94C2-DFA668F61088}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeParameterCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6E814F1F-C349-3766-B55D-87C9B0232B20}
	// *********************************************************************//
	_CodeTypeParameterCollection = interface(IDispatch)
		['{6E814F1F-C349-3766-B55D-87C9B0232B20}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeParameterCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6E814F1F-C349-3766-B55D-87C9B0232B20}
	// *********************************************************************//
	_CodeTypeParameterCollectionDisp = dispinterface
		['{6E814F1F-C349-3766-B55D-87C9B0232B20}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeDeclarationCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BE0ECED3-5F0D-310A-B352-7D1ADF28F8EC}
	// *********************************************************************//
	_CodeTypeDeclarationCollection = interface(IDispatch)
		['{BE0ECED3-5F0D-310A-B352-7D1ADF28F8EC}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeDeclarationCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BE0ECED3-5F0D-310A-B352-7D1ADF28F8EC}
	// *********************************************************************//
	_CodeTypeDeclarationCollectionDisp = dispinterface
		['{BE0ECED3-5F0D-310A-B352-7D1ADF28F8EC}']
	end;

	// *********************************************************************//
	// Interface :   _CodeNamespaceImportCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4C545457-76D7-3C56-B277-6A9E86D1046F}
	// *********************************************************************//
	_CodeNamespaceImportCollection = interface(IDispatch)
		['{4C545457-76D7-3C56-B277-6A9E86D1046F}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeNamespaceImportCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4C545457-76D7-3C56-B277-6A9E86D1046F}
	// *********************************************************************//
	_CodeNamespaceImportCollectionDisp = dispinterface
		['{4C545457-76D7-3C56-B277-6A9E86D1046F}']
	end;

	// *********************************************************************//
	// Interface :   _CodeRegionDirective
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {26AE5CC6-CCFD-3906-8B68-16E5EEFABB10}
	// *********************************************************************//
	_CodeRegionDirective = interface(IDispatch)
		['{26AE5CC6-CCFD-3906-8B68-16E5EEFABB10}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeRegionDirectiveDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {26AE5CC6-CCFD-3906-8B68-16E5EEFABB10}
	// *********************************************************************//
	_CodeRegionDirectiveDisp = dispinterface
		['{26AE5CC6-CCFD-3906-8B68-16E5EEFABB10}']
	end;

	// *********************************************************************//
	// Interface :   _CodeSnippetCompileUnit
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C7D34CF6-CF82-38B0-BF67-EB36DA63AE6E}
	// *********************************************************************//
	_CodeSnippetCompileUnit = interface(IDispatch)
		['{C7D34CF6-CF82-38B0-BF67-EB36DA63AE6E}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeSnippetCompileUnitDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {C7D34CF6-CF82-38B0-BF67-EB36DA63AE6E}
	// *********************************************************************//
	_CodeSnippetCompileUnitDisp = dispinterface
		['{C7D34CF6-CF82-38B0-BF67-EB36DA63AE6E}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeMemberCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F943231E-6192-33A0-9CA3-D6ED0E4F323D}
	// *********************************************************************//
	_CodeTypeMemberCollection = interface(IDispatch)
		['{F943231E-6192-33A0-9CA3-D6ED0E4F323D}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeMemberCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F943231E-6192-33A0-9CA3-D6ED0E4F323D}
	// *********************************************************************//
	_CodeTypeMemberCollectionDisp = dispinterface
		['{F943231E-6192-33A0-9CA3-D6ED0E4F323D}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeDelegate
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {455090AB-5C44-3F4F-8EED-CCC90A3112B5}
	// *********************************************************************//
	_CodeTypeDelegate = interface(IDispatch)
		['{455090AB-5C44-3F4F-8EED-CCC90A3112B5}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeDelegateDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {455090AB-5C44-3F4F-8EED-CCC90A3112B5}
	// *********************************************************************//
	_CodeTypeDelegateDisp = dispinterface
		['{455090AB-5C44-3F4F-8EED-CCC90A3112B5}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeParameter
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B6ED2127-296F-3B31-AEB5-E2101E98D746}
	// *********************************************************************//
	_CodeTypeParameter = interface(IDispatch)
		['{B6ED2127-296F-3B31-AEB5-E2101E98D746}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeParameterDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B6ED2127-296F-3B31-AEB5-E2101E98D746}
	// *********************************************************************//
	_CodeTypeParameterDisp = dispinterface
		['{B6ED2127-296F-3B31-AEB5-E2101E98D746}']
	end;

	// *********************************************************************//
	// Interface :   _CodeTypeReferenceExpression
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {726BB04D-2C4C-3E3D-A01A-31448DB063DD}
	// *********************************************************************//
	_CodeTypeReferenceExpression = interface(IDispatch)
		['{726BB04D-2C4C-3E3D-A01A-31448DB063DD}']
	end;

	// *********************************************************************//
	// DispIntf :    _CodeTypeReferenceExpressionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {726BB04D-2C4C-3E3D-A01A-31448DB063DD}
	// *********************************************************************//
	_CodeTypeReferenceExpressionDisp = dispinterface
		['{726BB04D-2C4C-3E3D-A01A-31448DB063DD}']
	end;

	// *********************************************************************//
	// Interface :   _Component
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {06565C0F-C465-37DE-896F-9864BC0BFC96}
	// *********************************************************************//
	_Component = interface(IDispatch)
		['{06565C0F-C465-37DE-896F-9864BC0BFC96}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {06565C0F-C465-37DE-896F-9864BC0BFC96}
	// *********************************************************************//
	_ComponentDisp = dispinterface
		['{06565C0F-C465-37DE-896F-9864BC0BFC96}']
	end;

	// *********************************************************************//
	// Interface :   _AttributeCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F971E04-B06A-3DD0-B6F5-622826693454}
	// *********************************************************************//
	_AttributeCollection = interface(IDispatch)
		['{6F971E04-B06A-3DD0-B6F5-622826693454}']
	end;

	// *********************************************************************//
	// DispIntf :    _AttributeCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {6F971E04-B06A-3DD0-B6F5-622826693454}
	// *********************************************************************//
	_AttributeCollectionDisp = dispinterface
		['{6F971E04-B06A-3DD0-B6F5-622826693454}']
	end;

	// *********************************************************************//
	// Interface :   _PropertyDescriptor
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FE5060F8-212F-3A4F-8FA8-DB2E14588C49}
	// *********************************************************************//
	_PropertyDescriptor = interface(IDispatch)
		['{FE5060F8-212F-3A4F-8FA8-DB2E14588C49}']
	end;

	// *********************************************************************//
	// DispIntf :    _PropertyDescriptorDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FE5060F8-212F-3A4F-8FA8-DB2E14588C49}
	// *********************************************************************//
	_PropertyDescriptorDisp = dispinterface
		['{FE5060F8-212F-3A4F-8FA8-DB2E14588C49}']
	end;

	// *********************************************************************//
	// Interface :   IComponent
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {B86E59F2-F1E2-389D-B5F1-C55307C8106E}
	// *********************************************************************//
	IComponent = interface(IDispatch)
		['{B86E59F2-F1E2-389D-B5F1-C55307C8106E}']
		function Get_Site: ISite; safecall;
		procedure _Set_Site(const pRetVal: ISite); safecall;
		procedure add_Disposed(const value: _EventHandler); safecall;
		procedure remove_Disposed(const value: _EventHandler); safecall;
		property Site: ISite read Get_Site write _Set_Site;
	end;

	// *********************************************************************//
	// DispIntf :    IComponentDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {B86E59F2-F1E2-389D-B5F1-C55307C8106E}
	// *********************************************************************//
	IComponentDisp = dispinterface
		['{B86E59F2-F1E2-389D-B5F1-C55307C8106E}']
		property Site: ISite dispid 1610743808;
		procedure add_Disposed(const value: _EventHandler); dispid 1610743810;
		procedure remove_Disposed(const value: _EventHandler); dispid 1610743811;
	end;

	// *********************************************************************//
	// Interface :   ISite
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {C4E1006A-9D98-3E96-A07E-921725135C28}
	// *********************************************************************//
	ISite = interface(IDispatch)
		['{C4E1006A-9D98-3E96-A07E-921725135C28}']
		function Get_component: IComponent; safecall;
		function Get_Container: IContainer; safecall;
		function Get_DesignMode: WordBool; safecall;
		function Get_name: WideString; safecall;
		procedure Set_name(const pRetVal: WideString); safecall;
		property component: IComponent read Get_component;
		property Container: IContainer read Get_Container;
		property DesignMode: WordBool read Get_DesignMode;
		property name: WideString read Get_name write Set_name;
	end;

	// *********************************************************************//
	// DispIntf :    ISiteDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {C4E1006A-9D98-3E96-A07E-921725135C28}
	// *********************************************************************//
	ISiteDisp = dispinterface
		['{C4E1006A-9D98-3E96-A07E-921725135C28}']
		property component: IComponent readonly dispid 1610743808;
		property Container: IContainer readonly dispid 1610743809;
		property DesignMode: WordBool readonly dispid 1610743810;
		property name: WideString dispid 1610743811;
	end;

	// *********************************************************************//
	// Interface :   IContainer
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {61D9C50C-4AAD-3539-AF82-4F36C19D77C8}
	// *********************************************************************//
	IContainer = interface(IDispatch)
		['{61D9C50C-4AAD-3539-AF82-4F36C19D77C8}']
		procedure Add(const component: IComponent); safecall;
		procedure Add_2(const component: IComponent; const name: WideString); safecall;
		function Get_Components: _ComponentCollection; safecall;
		procedure Remove(const component: IComponent); safecall;
		property Components: _ComponentCollection read Get_Components;
	end;

	// *********************************************************************//
	// DispIntf :    IContainerDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {61D9C50C-4AAD-3539-AF82-4F36C19D77C8}
	// *********************************************************************//
	IContainerDisp = dispinterface
		['{61D9C50C-4AAD-3539-AF82-4F36C19D77C8}']
		procedure Add(const component: IComponent); dispid 1610743808;
		procedure Add_2(const component: IComponent; const name: WideString); dispid 1610743809;
		property Components: _ComponentCollection readonly dispid 1610743810;
		procedure Remove(const component: IComponent); dispid 1610743811;
	end;

	// *********************************************************************//
	// Interface :   _ComponentCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {42F00C62-F454-3A38-AF9E-35D4E2BDFDAC}
	// *********************************************************************//
	_ComponentCollection = interface(IDispatch)
		['{42F00C62-F454-3A38-AF9E-35D4E2BDFDAC}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {42F00C62-F454-3A38-AF9E-35D4E2BDFDAC}
	// *********************************************************************//
	_ComponentCollectionDisp = dispinterface
		['{42F00C62-F454-3A38-AF9E-35D4E2BDFDAC}']
	end;

	// *********************************************************************//
	// Interface :   _EventDescriptor
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {95B6A563-4A39-37A2-91D7-04B8ECDD1B66}
	// *********************************************************************//
	_EventDescriptor = interface(IDispatch)
		['{95B6A563-4A39-37A2-91D7-04B8ECDD1B66}']
	end;

	// *********************************************************************//
	// DispIntf :    _EventDescriptorDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {95B6A563-4A39-37A2-91D7-04B8ECDD1B66}
	// *********************************************************************//
	_EventDescriptorDisp = dispinterface
		['{95B6A563-4A39-37A2-91D7-04B8ECDD1B66}']
	end;

	// *********************************************************************//
	// Interface :   _EventDescriptorCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4C933253-83F2-35B6-961A-0780FF1BAF7C}
	// *********************************************************************//
	_EventDescriptorCollection = interface(IDispatch)
		['{4C933253-83F2-35B6-961A-0780FF1BAF7C}']
	end;

	// *********************************************************************//
	// DispIntf :    _EventDescriptorCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4C933253-83F2-35B6-961A-0780FF1BAF7C}
	// *********************************************************************//
	_EventDescriptorCollectionDisp = dispinterface
		['{4C933253-83F2-35B6-961A-0780FF1BAF7C}']
	end;

	// *********************************************************************//
	// Interface :   _MemberDescriptor
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F55EFA91-812E-3C6E-998F-3598E93FB8A7}
	// *********************************************************************//
	_MemberDescriptor = interface(IDispatch)
		['{F55EFA91-812E-3C6E-998F-3598E93FB8A7}']
	end;

	// *********************************************************************//
	// DispIntf :    _MemberDescriptorDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {F55EFA91-812E-3C6E-998F-3598E93FB8A7}
	// *********************************************************************//
	_MemberDescriptorDisp = dispinterface
		['{F55EFA91-812E-3C6E-998F-3598E93FB8A7}']
	end;

	// *********************************************************************//
	// Interface :   _MarshalByValueComponent
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {35F38044-2017-3E05-BA83-1B87CC0D49C7}
	// *********************************************************************//
	_MarshalByValueComponent = interface(IDispatch)
		['{35F38044-2017-3E05-BA83-1B87CC0D49C7}']
	end;

	// *********************************************************************//
	// DispIntf :    _MarshalByValueComponentDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {35F38044-2017-3E05-BA83-1B87CC0D49C7}
	// *********************************************************************//
	_MarshalByValueComponentDisp = dispinterface
		['{35F38044-2017-3E05-BA83-1B87CC0D49C7}']
	end;

	// *********************************************************************//
	// Interface :   IDesigner
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {6EEF3D0D-305A-3DF4-9830-8C2B40E1C4BF}
	// *********************************************************************//
	IDesigner = interface(IDispatch)
		['{6EEF3D0D-305A-3DF4-9830-8C2B40E1C4BF}']
		function Get_component: IComponent; safecall;
		function Get_Verbs: _DesignerVerbCollection; safecall;
		procedure DoDefaultAction; safecall;
		procedure Initialize(const component: IComponent); safecall;
		property component: IComponent read Get_component;
		property Verbs: _DesignerVerbCollection read Get_Verbs;
	end;

	// *********************************************************************//
	// DispIntf :    IDesignerDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {6EEF3D0D-305A-3DF4-9830-8C2B40E1C4BF}
	// *********************************************************************//
	IDesignerDisp = dispinterface
		['{6EEF3D0D-305A-3DF4-9830-8C2B40E1C4BF}']
		property component: IComponent readonly dispid 1610743808;
		property Verbs: _DesignerVerbCollection readonly dispid 1610743809;
		procedure DoDefaultAction; dispid 1610743810;
		procedure Initialize(const component: IComponent); dispid 1610743811;
	end;

	// *********************************************************************//
	// Interface :   IDesignerHost
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {EEC98CD8-EF5B-3B60-82C9-86F616F6BB20}
	// *********************************************************************//
	IDesignerHost = interface(IDispatch)
		['{EEC98CD8-EF5B-3B60-82C9-86F616F6BB20}']
		function Get_Loading: WordBool; safecall;
		function Get_InTransaction: WordBool; safecall;
		function Get_Container: IContainer; safecall;
		function Get_RootComponent: IComponent; safecall;
		function Get_RootComponentClassName: WideString; safecall;
		function Get_TransactionDescription: WideString; safecall;
		procedure add_Activated(const value: _EventHandler); safecall;
		procedure remove_Activated(const value: _EventHandler); safecall;
		procedure add_Deactivated(const value: _EventHandler); safecall;
		procedure remove_Deactivated(const value: _EventHandler); safecall;
		procedure add_LoadComplete(const value: _EventHandler); safecall;
		procedure remove_LoadComplete(const value: _EventHandler); safecall;
		procedure add_TransactionClosed(const value: _DesignerTransactionCloseEventHandler); safecall;
		procedure remove_TransactionClosed(const value: _DesignerTransactionCloseEventHandler); safecall;
		procedure add_TransactionClosing(const value: _DesignerTransactionCloseEventHandler); safecall;
		procedure remove_TransactionClosing(const value: _DesignerTransactionCloseEventHandler); safecall;
		procedure add_TransactionOpened(const value: _EventHandler); safecall;
		procedure remove_TransactionOpened(const value: _EventHandler); safecall;
		procedure add_TransactionOpening(const value: _EventHandler); safecall;
		procedure remove_TransactionOpening(const value: _EventHandler); safecall;
		procedure Activate; safecall;
		function CreateComponent(const componentClass: _Type): IComponent; safecall;
		function CreateComponent_2(const componentClass: _Type; const name: WideString): IComponent; safecall;
		function CreateTransaction: IUnknown; safecall;
		function CreateTransaction_2(const description: WideString): IUnknown; safecall;
		procedure DestroyComponent(const component: IComponent); safecall;
		function GetDesigner(const component: IComponent): IDesigner; safecall;
		function GetType(const typeName: WideString): _Type; safecall;
		property Loading: WordBool read Get_Loading;
		property InTransaction: WordBool read Get_InTransaction;
		property Container: IContainer read Get_Container;
		property RootComponent: IComponent read Get_RootComponent;
		property RootComponentClassName: WideString read Get_RootComponentClassName;
		property TransactionDescription: WideString read Get_TransactionDescription;
	end;

	// *********************************************************************//
	// DispIntf :    IDesignerHostDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {EEC98CD8-EF5B-3B60-82C9-86F616F6BB20}
	// *********************************************************************//
	IDesignerHostDisp = dispinterface
		['{EEC98CD8-EF5B-3B60-82C9-86F616F6BB20}']
		property Loading: WordBool readonly dispid 1610743808;
		property InTransaction: WordBool readonly dispid 1610743809;
		property Container: IContainer readonly dispid 1610743810;
		property RootComponent: IComponent readonly dispid 1610743811;
		property RootComponentClassName: WideString readonly dispid 1610743812;
		property TransactionDescription: WideString readonly dispid 1610743813;
		procedure add_Activated(const value: _EventHandler); dispid 1610743814;
		procedure remove_Activated(const value: _EventHandler); dispid 1610743815;
		procedure add_Deactivated(const value: _EventHandler); dispid 1610743816;
		procedure remove_Deactivated(const value: _EventHandler); dispid 1610743817;
		procedure add_LoadComplete(const value: _EventHandler); dispid 1610743818;
		procedure remove_LoadComplete(const value: _EventHandler); dispid 1610743819;
		procedure add_TransactionClosed(const value: _DesignerTransactionCloseEventHandler); dispid 1610743820;
		procedure remove_TransactionClosed(const value: _DesignerTransactionCloseEventHandler); dispid 1610743821;
		procedure add_TransactionClosing(const value: _DesignerTransactionCloseEventHandler); dispid 1610743822;
		procedure remove_TransactionClosing(const value: _DesignerTransactionCloseEventHandler); dispid 1610743823;
		procedure add_TransactionOpened(const value: _EventHandler); dispid 1610743824;
		procedure remove_TransactionOpened(const value: _EventHandler); dispid 1610743825;
		procedure add_TransactionOpening(const value: _EventHandler); dispid 1610743826;
		procedure remove_TransactionOpening(const value: _EventHandler); dispid 1610743827;
		procedure Activate; dispid 1610743828;
		function CreateComponent(const componentClass: _Type): IComponent; dispid 1610743829;
		function CreateComponent_2(const componentClass: _Type; const name: WideString): IComponent; dispid 1610743830;
		function CreateTransaction: IUnknown; dispid 1610743831;
		function CreateTransaction_2(const description: WideString): IUnknown; dispid 1610743832;
		procedure DestroyComponent(const component: IComponent); dispid 1610743833;
		function GetDesigner(const component: IComponent): IDesigner; dispid 1610743834;
		function GetType(const typeName: WideString): _Type; dispid 1610743835;
	end;

	// *********************************************************************//
	// Interface :   _CommandID
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FC50598B-2406-33D2-BA9A-CFBEA52BC05A}
	// *********************************************************************//
	_CommandID = interface(IDispatch)
		['{FC50598B-2406-33D2-BA9A-CFBEA52BC05A}']
	end;

	// *********************************************************************//
	// DispIntf :    _CommandIDDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {FC50598B-2406-33D2-BA9A-CFBEA52BC05A}
	// *********************************************************************//
	_CommandIDDisp = dispinterface
		['{FC50598B-2406-33D2-BA9A-CFBEA52BC05A}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentChangedEventArgs
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A8FEF1C6-D434-3686-A4DE-B68E8EABB509}
	// *********************************************************************//
	_ComponentChangedEventArgs = interface(IDispatch)
		['{A8FEF1C6-D434-3686-A4DE-B68E8EABB509}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentChangedEventArgsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A8FEF1C6-D434-3686-A4DE-B68E8EABB509}
	// *********************************************************************//
	_ComponentChangedEventArgsDisp = dispinterface
		['{A8FEF1C6-D434-3686-A4DE-B68E8EABB509}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentChangedEventHandler
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {0451C390-1F90-341D-9278-B9FF2636D67D}
	// *********************************************************************//
	_ComponentChangedEventHandler = interface(IDispatch)
		['{0451C390-1F90-341D-9278-B9FF2636D67D}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentChangedEventHandlerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {0451C390-1F90-341D-9278-B9FF2636D67D}
	// *********************************************************************//
	_ComponentChangedEventHandlerDisp = dispinterface
		['{0451C390-1F90-341D-9278-B9FF2636D67D}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentChangingEventArgs
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B78CBAA3-37DF-31C9-ABD2-CDCB1A7FBA9F}
	// *********************************************************************//
	_ComponentChangingEventArgs = interface(IDispatch)
		['{B78CBAA3-37DF-31C9-ABD2-CDCB1A7FBA9F}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentChangingEventArgsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B78CBAA3-37DF-31C9-ABD2-CDCB1A7FBA9F}
	// *********************************************************************//
	_ComponentChangingEventArgsDisp = dispinterface
		['{B78CBAA3-37DF-31C9-ABD2-CDCB1A7FBA9F}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentChangingEventHandler
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7F8C2DA3-D337-334F-92E9-87BE9BDC6070}
	// *********************************************************************//
	_ComponentChangingEventHandler = interface(IDispatch)
		['{7F8C2DA3-D337-334F-92E9-87BE9BDC6070}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentChangingEventHandlerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7F8C2DA3-D337-334F-92E9-87BE9BDC6070}
	// *********************************************************************//
	_ComponentChangingEventHandlerDisp = dispinterface
		['{7F8C2DA3-D337-334F-92E9-87BE9BDC6070}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentEventArgs
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {438E8DCF-6875-305F-8CA5-40DBB15782A6}
	// *********************************************************************//
	_ComponentEventArgs = interface(IDispatch)
		['{438E8DCF-6875-305F-8CA5-40DBB15782A6}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentEventArgsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {438E8DCF-6875-305F-8CA5-40DBB15782A6}
	// *********************************************************************//
	_ComponentEventArgsDisp = dispinterface
		['{438E8DCF-6875-305F-8CA5-40DBB15782A6}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentEventHandler
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {290B355D-80D3-3AFA-96AB-B4D395729374}
	// *********************************************************************//
	_ComponentEventHandler = interface(IDispatch)
		['{290B355D-80D3-3AFA-96AB-B4D395729374}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentEventHandlerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {290B355D-80D3-3AFA-96AB-B4D395729374}
	// *********************************************************************//
	_ComponentEventHandlerDisp = dispinterface
		['{290B355D-80D3-3AFA-96AB-B4D395729374}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentRenameEventArgs
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {DA5D7739-9522-3E28-9AB7-7C2D7D27C63A}
	// *********************************************************************//
	_ComponentRenameEventArgs = interface(IDispatch)
		['{DA5D7739-9522-3E28-9AB7-7C2D7D27C63A}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentRenameEventArgsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {DA5D7739-9522-3E28-9AB7-7C2D7D27C63A}
	// *********************************************************************//
	_ComponentRenameEventArgsDisp = dispinterface
		['{DA5D7739-9522-3E28-9AB7-7C2D7D27C63A}']
	end;

	// *********************************************************************//
	// Interface :   _ComponentRenameEventHandler
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BA2DF049-DA87-3BD1-97B0-7904B59ADF7E}
	// *********************************************************************//
	_ComponentRenameEventHandler = interface(IDispatch)
		['{BA2DF049-DA87-3BD1-97B0-7904B59ADF7E}']
	end;

	// *********************************************************************//
	// DispIntf :    _ComponentRenameEventHandlerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BA2DF049-DA87-3BD1-97B0-7904B59ADF7E}
	// *********************************************************************//
	_ComponentRenameEventHandlerDisp = dispinterface
		['{BA2DF049-DA87-3BD1-97B0-7904B59ADF7E}']
	end;

	// *********************************************************************//
	// Interface :   _DesignerTransactionCloseEventArgs
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {3924A637-C2C4-3558-945F-279B5AC39ED9}
	// *********************************************************************//
	_DesignerTransactionCloseEventArgs = interface(IDispatch)
		['{3924A637-C2C4-3558-945F-279B5AC39ED9}']
	end;

	// *********************************************************************//
	// DispIntf :    _DesignerTransactionCloseEventArgsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {3924A637-C2C4-3558-945F-279B5AC39ED9}
	// *********************************************************************//
	_DesignerTransactionCloseEventArgsDisp = dispinterface
		['{3924A637-C2C4-3558-945F-279B5AC39ED9}']
	end;

	// *********************************************************************//
	// Interface :   _DesignerTransactionCloseEventHandler
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4543D155-EE6A-3529-BC8D-CF0E866B6B0B}
	// *********************************************************************//
	_DesignerTransactionCloseEventHandler = interface(IDispatch)
		['{4543D155-EE6A-3529-BC8D-CF0E866B6B0B}']
	end;

	// *********************************************************************//
	// DispIntf :    _DesignerTransactionCloseEventHandlerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {4543D155-EE6A-3529-BC8D-CF0E866B6B0B}
	// *********************************************************************//
	_DesignerTransactionCloseEventHandlerDisp = dispinterface
		['{4543D155-EE6A-3529-BC8D-CF0E866B6B0B}']
	end;

	// *********************************************************************//
	// Interface :   _DesignerVerb
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7C41B90E-52FB-3E54-8B03-EBE0BF172C84}
	// *********************************************************************//
	_DesignerVerb = interface(IDispatch)
		['{7C41B90E-52FB-3E54-8B03-EBE0BF172C84}']
	end;

	// *********************************************************************//
	// DispIntf :    _DesignerVerbDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {7C41B90E-52FB-3E54-8B03-EBE0BF172C84}
	// *********************************************************************//
	_DesignerVerbDisp = dispinterface
		['{7C41B90E-52FB-3E54-8B03-EBE0BF172C84}']
	end;

	// *********************************************************************//
	// Interface :   _MenuCommand
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {1FF238CE-6190-3750-A34F-05F02B7315A6}
	// *********************************************************************//
	_MenuCommand = interface(IDispatch)
		['{1FF238CE-6190-3750-A34F-05F02B7315A6}']
	end;

	// *********************************************************************//
	// DispIntf :    _MenuCommandDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {1FF238CE-6190-3750-A34F-05F02B7315A6}
	// *********************************************************************//
	_MenuCommandDisp = dispinterface
		['{1FF238CE-6190-3750-A34F-05F02B7315A6}']
	end;

	// *********************************************************************//
	// Interface :   _DesignerVerbCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AC3BDDA4-25B8-3321-A1C0-7C37BBF2DDED}
	// *********************************************************************//
	_DesignerVerbCollection = interface(IDispatch)
		['{AC3BDDA4-25B8-3321-A1C0-7C37BBF2DDED}']
	end;

	// *********************************************************************//
	// DispIntf :    _DesignerVerbCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {AC3BDDA4-25B8-3321-A1C0-7C37BBF2DDED}
	// *********************************************************************//
	_DesignerVerbCollectionDisp = dispinterface
		['{AC3BDDA4-25B8-3321-A1C0-7C37BBF2DDED}']
	end;

	// *********************************************************************//
	// Interface :   IComponentChangeService
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {2FEF0210-9EBD-32C0-9BFD-24841AC0FCF7}
	// *********************************************************************//
	IComponentChangeService = interface(IDispatch)
		['{2FEF0210-9EBD-32C0-9BFD-24841AC0FCF7}']
		procedure add_ComponentAdded(const value: _ComponentEventHandler); safecall;
		procedure remove_ComponentAdded(const value: _ComponentEventHandler); safecall;
		procedure add_ComponentAdding(const value: _ComponentEventHandler); safecall;
		procedure remove_ComponentAdding(const value: _ComponentEventHandler); safecall;
		procedure add_ComponentChanged(const value: _ComponentChangedEventHandler); safecall;
		procedure remove_ComponentChanged(const value: _ComponentChangedEventHandler); safecall;
		procedure add_ComponentChanging(const value: _ComponentChangingEventHandler); safecall;
		procedure remove_ComponentChanging(const value: _ComponentChangingEventHandler); safecall;
		procedure add_ComponentRemoved(const value: _ComponentEventHandler); safecall;
		procedure remove_ComponentRemoved(const value: _ComponentEventHandler); safecall;
		procedure add_ComponentRemoving(const value: _ComponentEventHandler); safecall;
		procedure remove_ComponentRemoving(const value: _ComponentEventHandler); safecall;
		procedure add_ComponentRename(const value: _ComponentRenameEventHandler); safecall;
		procedure remove_ComponentRename(const value: _ComponentRenameEventHandler); safecall;
		procedure OnComponentChanged(component: OleVariant; const member: _MemberDescriptor; oldValue: OleVariant; newValue: OleVariant); safecall;
		procedure OnComponentChanging(component: OleVariant; const member: _MemberDescriptor); safecall;
	end;

	// *********************************************************************//
	// DispIntf :    IComponentChangeServiceDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {2FEF0210-9EBD-32C0-9BFD-24841AC0FCF7}
	// *********************************************************************//
	IComponentChangeServiceDisp = dispinterface
		['{2FEF0210-9EBD-32C0-9BFD-24841AC0FCF7}']
		procedure add_ComponentAdded(const value: _ComponentEventHandler); dispid 1610743808;
		procedure remove_ComponentAdded(const value: _ComponentEventHandler); dispid 1610743809;
		procedure add_ComponentAdding(const value: _ComponentEventHandler); dispid 1610743810;
		procedure remove_ComponentAdding(const value: _ComponentEventHandler); dispid 1610743811;
		procedure add_ComponentChanged(const value: _ComponentChangedEventHandler); dispid 1610743812;
		procedure remove_ComponentChanged(const value: _ComponentChangedEventHandler); dispid 1610743813;
		procedure add_ComponentChanging(const value: _ComponentChangingEventHandler); dispid 1610743814;
		procedure remove_ComponentChanging(const value: _ComponentChangingEventHandler); dispid 1610743815;
		procedure add_ComponentRemoved(const value: _ComponentEventHandler); dispid 1610743816;
		procedure remove_ComponentRemoved(const value: _ComponentEventHandler); dispid 1610743817;
		procedure add_ComponentRemoving(const value: _ComponentEventHandler); dispid 1610743818;
		procedure remove_ComponentRemoving(const value: _ComponentEventHandler); dispid 1610743819;
		procedure add_ComponentRename(const value: _ComponentRenameEventHandler); dispid 1610743820;
		procedure remove_ComponentRename(const value: _ComponentRenameEventHandler); dispid 1610743821;
		procedure OnComponentChanged(component: OleVariant; const member: _MemberDescriptor; oldValue: OleVariant; newValue: OleVariant);
			dispid 1610743822;
		procedure OnComponentChanging(component: OleVariant; const member: _MemberDescriptor); dispid 1610743823;
	end;

	// *********************************************************************//
	// Interface :   IServiceContainer
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {6BA96B42-7FDD-3223-BF52-7FE677B92815}
	// *********************************************************************//
	IServiceContainer = interface(IDispatch)
		['{6BA96B42-7FDD-3223-BF52-7FE677B92815}']
		procedure AddService(const serviceType: _Type; serviceInstance: OleVariant); safecall;
		procedure AddService_2(const serviceType: _Type; serviceInstance: OleVariant; promote: WordBool); safecall;
		procedure AddService_3(const serviceType: _Type; const callback: _ServiceCreatorCallback); safecall;
		procedure AddService_4(const serviceType: _Type; const callback: _ServiceCreatorCallback; promote: WordBool); safecall;
		procedure RemoveService(const serviceType: _Type); safecall;
		procedure RemoveService_2(const serviceType: _Type; promote: WordBool); safecall;
	end;

	// *********************************************************************//
	// DispIntf :    IServiceContainerDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {6BA96B42-7FDD-3223-BF52-7FE677B92815}
	// *********************************************************************//
	IServiceContainerDisp = dispinterface
		['{6BA96B42-7FDD-3223-BF52-7FE677B92815}']
		procedure AddService(const serviceType: _Type; serviceInstance: OleVariant); dispid 1610743808;
		procedure AddService_2(const serviceType: _Type; serviceInstance: OleVariant; promote: WordBool); dispid 1610743809;
		procedure AddService_3(const serviceType: _Type; const callback: _ServiceCreatorCallback); dispid 1610743810;
		procedure AddService_4(const serviceType: _Type; const callback: _ServiceCreatorCallback; promote: WordBool); dispid 1610743811;
		procedure RemoveService(const serviceType: _Type); dispid 1610743812;
		procedure RemoveService_2(const serviceType: _Type; promote: WordBool); dispid 1610743813;
	end;

	// *********************************************************************//
	// Interface :   IEventBindingService
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {1A19D89E-F4FE-3E8E-B7EC-05D4E592F3F6}
	// *********************************************************************//
	IEventBindingService = interface(IDispatch)
		['{1A19D89E-F4FE-3E8E-B7EC-05D4E592F3F6}']
		function CreateUniqueMethodName(const component: IComponent; const e: _EventDescriptor): WideString; safecall;
		function GetCompatibleMethods(const e: _EventDescriptor): ICollection; safecall;
		function GetEvent(const property_: _PropertyDescriptor): _EventDescriptor; safecall;
		function GetEventProperties(const events: _EventDescriptorCollection): IUnknown; safecall;
		function GetEventProperty(const e: _EventDescriptor): _PropertyDescriptor; safecall;
		function ShowCode: WordBool; safecall;
		function ShowCode_2(lineNumber: Integer): WordBool; safecall;
		function ShowCode_3(const component: IComponent; const e: _EventDescriptor): WordBool; safecall;
	end;

	// *********************************************************************//
	// DispIntf :    IEventBindingServiceDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {1A19D89E-F4FE-3E8E-B7EC-05D4E592F3F6}
	// *********************************************************************//
	IEventBindingServiceDisp = dispinterface
		['{1A19D89E-F4FE-3E8E-B7EC-05D4E592F3F6}']
		function CreateUniqueMethodName(const component: IComponent; const e: _EventDescriptor): WideString; dispid 1610743808;
		function GetCompatibleMethods(const e: _EventDescriptor): ICollection; dispid 1610743809;
		function GetEvent(const property_: _PropertyDescriptor): _EventDescriptor; dispid 1610743810;
		function GetEventProperties(const events: _EventDescriptorCollection): IUnknown; dispid 1610743811;
		function GetEventProperty(const e: _EventDescriptor): _PropertyDescriptor; dispid 1610743812;
		function ShowCode: WordBool; dispid 1610743813;
		function ShowCode_2(lineNumber: Integer): WordBool; dispid 1610743814;
		function ShowCode_3(const component: IComponent; const e: _EventDescriptor): WordBool; dispid 1610743815;
	end;

	// *********************************************************************//
	// Interface :   IMenuCommandService
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {DF651C5D-783E-3789-901F-A962B7587E69}
	// *********************************************************************//
	IMenuCommandService = interface(IDispatch)
		['{DF651C5D-783E-3789-901F-A962B7587E69}']
		function Get_Verbs: _DesignerVerbCollection; safecall;
		procedure AddCommand(const command: _MenuCommand); safecall;
		procedure AddVerb(const verb: _DesignerVerb); safecall;
		function FindCommand(const CommandID: _CommandID): _MenuCommand; safecall;
		function GlobalInvoke(const CommandID: _CommandID): WordBool; safecall;
		procedure RemoveCommand(const command: _MenuCommand); safecall;
		procedure RemoveVerb(const verb: _DesignerVerb); safecall;
		procedure ShowContextMenu(const menuID: _CommandID; x: Integer; y: Integer); safecall;
		property Verbs: _DesignerVerbCollection read Get_Verbs;
	end;

	// *********************************************************************//
	// DispIntf :    IMenuCommandServiceDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {DF651C5D-783E-3789-901F-A962B7587E69}
	// *********************************************************************//
	IMenuCommandServiceDisp = dispinterface
		['{DF651C5D-783E-3789-901F-A962B7587E69}']
		property Verbs: _DesignerVerbCollection readonly dispid 1610743808;
		procedure AddCommand(const command: _MenuCommand); dispid 1610743809;
		procedure AddVerb(const verb: _DesignerVerb); dispid 1610743810;
		function FindCommand(const CommandID: _CommandID): _MenuCommand; dispid 1610743811;
		function GlobalInvoke(const CommandID: _CommandID): WordBool; dispid 1610743812;
		procedure RemoveCommand(const command: _MenuCommand); dispid 1610743813;
		procedure RemoveVerb(const verb: _DesignerVerb); dispid 1610743814;
		procedure ShowContextMenu(const menuID: _CommandID; x: Integer; y: Integer); dispid 1610743815;
	end;

	// *********************************************************************//
	// Interface :   IRootDesigner
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {2CC5E562-6C14-34A6-9D0B-E6FF949AE8FB}
	// *********************************************************************//
	IRootDesigner = interface(IDispatch)
		['{2CC5E562-6C14-34A6-9D0B-E6FF949AE8FB}']
		function Get_SupportedTechnologies: PSafeArray; safecall;
		function GetView(technology: ViewTechnology): OleVariant; safecall;
		property SupportedTechnologies: PSafeArray read Get_SupportedTechnologies;
	end;

	// *********************************************************************//
	// DispIntf :    IRootDesignerDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {2CC5E562-6C14-34A6-9D0B-E6FF949AE8FB}
	// *********************************************************************//
	IRootDesignerDisp = dispinterface
		['{2CC5E562-6C14-34A6-9D0B-E6FF949AE8FB}']
		property SupportedTechnologies: { NOT_OLEAUTO(PSafeArray) } OleVariant readonly dispid 1610743808;
		function GetView(technology: ViewTechnology): OleVariant; dispid 1610743809;
	end;

	// *********************************************************************//
	// Interface :   ISelectionService
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {297A65BE-5080-3F7F-AD19-B0D05D6F2327}
	// *********************************************************************//
	ISelectionService = interface(IDispatch)
		['{297A65BE-5080-3F7F-AD19-B0D05D6F2327}']
		function Get_PrimarySelection: OleVariant; safecall;
		function Get_SelectionCount: Integer; safecall;
		procedure add_SelectionChanged(const value: _EventHandler); safecall;
		procedure remove_SelectionChanged(const value: _EventHandler); safecall;
		procedure add_SelectionChanging(const value: _EventHandler); safecall;
		procedure remove_SelectionChanging(const value: _EventHandler); safecall;
		function GetComponentSelected(component: OleVariant): WordBool; safecall;
		function GetSelectedComponents: ICollection; safecall;
		procedure SetSelectedComponents(const Components: ICollection); safecall;
		procedure SetSelectedComponents_2(const Components: ICollection; selectionType: SelectionTypes); safecall;
		property PrimarySelection: OleVariant read Get_PrimarySelection;
		property SelectionCount: Integer read Get_SelectionCount;
	end;

	// *********************************************************************//
	// DispIntf :    ISelectionServiceDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {297A65BE-5080-3F7F-AD19-B0D05D6F2327}
	// *********************************************************************//
	ISelectionServiceDisp = dispinterface
		['{297A65BE-5080-3F7F-AD19-B0D05D6F2327}']
		property PrimarySelection: OleVariant readonly dispid 1610743808;
		property SelectionCount: Integer readonly dispid 1610743809;
		procedure add_SelectionChanged(const value: _EventHandler); dispid 1610743810;
		procedure remove_SelectionChanged(const value: _EventHandler); dispid 1610743811;
		procedure add_SelectionChanging(const value: _EventHandler); dispid 1610743812;
		procedure remove_SelectionChanging(const value: _EventHandler); dispid 1610743813;
		function GetComponentSelected(component: OleVariant): WordBool; dispid 1610743814;
		function GetSelectedComponents: ICollection; dispid 1610743815;
		procedure SetSelectedComponents(const Components: ICollection); dispid 1610743816;
		procedure SetSelectedComponents_2(const Components: ICollection; selectionType: SelectionTypes); dispid 1610743817;
	end;

	// *********************************************************************//
	// Interface :   _ServiceCreatorCallback
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BE380BEC-79F2-3876-B510-FA2FE43B7EB7}
	// *********************************************************************//
	_ServiceCreatorCallback = interface(IDispatch)
		['{BE380BEC-79F2-3876-B510-FA2FE43B7EB7}']
	end;

	// *********************************************************************//
	// DispIntf :    _ServiceCreatorCallbackDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BE380BEC-79F2-3876-B510-FA2FE43B7EB7}
	// *********************************************************************//
	_ServiceCreatorCallbackDisp = dispinterface
		['{BE380BEC-79F2-3876-B510-FA2FE43B7EB7}']
	end;

	// *********************************************************************//
	// Interface :   _DesignerLoader
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {43BE964C-1B4A-3D1F-9D94-8185A1E6CB7B}
	// *********************************************************************//
	_DesignerLoader = interface(IDispatch)
		['{43BE964C-1B4A-3D1F-9D94-8185A1E6CB7B}']
	end;

	// *********************************************************************//
	// DispIntf :    _DesignerLoaderDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {43BE964C-1B4A-3D1F-9D94-8185A1E6CB7B}
	// *********************************************************************//
	_DesignerLoaderDisp = dispinterface
		['{43BE964C-1B4A-3D1F-9D94-8185A1E6CB7B}']
	end;

	// *********************************************************************//
	// Interface :   _PerformanceCounterManager
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A9809E7D-42F8-3284-82CF-AB5F863A29AA}
	// *********************************************************************//
	_PerformanceCounterManager = interface(IDispatch)
		['{A9809E7D-42F8-3284-82CF-AB5F863A29AA}']
	end;

	// *********************************************************************//
	// DispIntf :    _PerformanceCounterManagerDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A9809E7D-42F8-3284-82CF-AB5F863A29AA}
	// *********************************************************************//
	_PerformanceCounterManagerDisp = dispinterface
		['{A9809E7D-42F8-3284-82CF-AB5F863A29AA}']
	end;

	// *********************************************************************//
	// Interface :   _WebHeaderCollection
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B97E84F2-FAB2-340D-8D49-2AC85CF5C0EC}
	// *********************************************************************//
	_WebHeaderCollection = interface(IDispatch)
		['{B97E84F2-FAB2-340D-8D49-2AC85CF5C0EC}']
	end;

	// *********************************************************************//
	// DispIntf :    _WebHeaderCollectionDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {B97E84F2-FAB2-340D-8D49-2AC85CF5C0EC}
	// *********************************************************************//
	_WebHeaderCollectionDisp = dispinterface
		['{B97E84F2-FAB2-340D-8D49-2AC85CF5C0EC}']
	end;

	// *********************************************************************//
	// Interface :   _WebClient
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {85B4A627-7552-3AA6-8A1C-A213C5788FEC}
	// *********************************************************************//
	_WebClient = interface(IDispatch)
		['{85B4A627-7552-3AA6-8A1C-A213C5788FEC}']
	end;

	// *********************************************************************//
	// DispIntf :    _WebClientDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {85B4A627-7552-3AA6-8A1C-A213C5788FEC}
	// *********************************************************************//
	_WebClientDisp = dispinterface
		['{85B4A627-7552-3AA6-8A1C-A213C5788FEC}']
	end;

	// *********************************************************************//
	// Interface :   _StandardOleMarshalObject
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05F3D6C7-D4D1-37EB-AC35-63347B838A23}
	// *********************************************************************//
	_StandardOleMarshalObject = interface(IDispatch)
		['{05F3D6C7-D4D1-37EB-AC35-63347B838A23}']
	end;

	// *********************************************************************//
	// DispIntf :    _StandardOleMarshalObjectDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {05F3D6C7-D4D1-37EB-AC35-63347B838A23}
	// *********************************************************************//
	_StandardOleMarshalObjectDisp = dispinterface
		['{05F3D6C7-D4D1-37EB-AC35-63347B838A23}']
	end;

	// *********************************************************************//
	// La classe CoCodeTypeMember fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeMember exposée
	// par la CoClasse CodeTypeMember. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeMember = class
		class function Create: _CodeTypeMember;
		class function CreateRemote(const MachineName: string): _CodeTypeMember;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeReference fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeReference exposée
	// par la CoClasse CodeTypeReference. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeReference = class
		class function Create: _CodeTypeReference;
		class function CreateRemote(const MachineName: string): _CodeTypeReference;
	end;

	// *********************************************************************//
	// La classe CoCodeCompileUnit fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCompileUnit exposée
	// par la CoClasse CodeCompileUnit. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCompileUnit = class
		class function Create: _CodeCompileUnit;
		class function CreateRemote(const MachineName: string): _CodeCompileUnit;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeDeclaration fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeDeclaration exposée
	// par la CoClasse CodeTypeDeclaration. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeDeclaration = class
		class function Create: _CodeTypeDeclaration;
		class function CreateRemote(const MachineName: string): _CodeTypeDeclaration;
	end;

	// *********************************************************************//
	// La classe CoCodeExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeExpression exposée
	// par la CoClasse CodeExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeExpression = class
		class function Create: _CodeExpression;
		class function CreateRemote(const MachineName: string): _CodeExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeNamespace fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeNamespace exposée
	// par la CoClasse CodeNamespace. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeNamespace = class
		class function Create: _CodeNamespace;
		class function CreateRemote(const MachineName: string): _CodeNamespace;
	end;

	// *********************************************************************//
	// La classe CoCodeStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeStatement exposée
	// par la CoClasse CodeStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeStatement = class
		class function Create: _CodeStatement;
		class function CreateRemote(const MachineName: string): _CodeStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeDomProvider fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDomProvider exposée
	// par la CoClasse CodeDomProvider. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDomProvider = class
		class function Create: _CodeDomProvider;
		class function CreateRemote(const MachineName: string): _CodeDomProvider;
	end;

	// *********************************************************************//
	// La classe CoTypeConverter fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _TypeConverter exposée
	// par la CoClasse TypeConverter. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoTypeConverter = class
		class function Create: _TypeConverter;
		class function CreateRemote(const MachineName: string): _TypeConverter;
	end;

	// *********************************************************************//
	// La classe CoCodeAttributeArgument fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAttributeArgument exposée
	// par la CoClasse CodeAttributeArgument. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAttributeArgument = class
		class function Create: _CodeAttributeArgument;
		class function CreateRemote(const MachineName: string): _CodeAttributeArgument;
	end;

	// *********************************************************************//
	// La classe CoCodeDefaultValueExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDefaultValueExpression exposée
	// par la CoClasse CodeDefaultValueExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDefaultValueExpression = class
		class function Create: _CodeDefaultValueExpression;
		class function CreateRemote(const MachineName: string): _CodeDefaultValueExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeDirectionExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDirectionExpression exposée
	// par la CoClasse CodeDirectionExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDirectionExpression = class
		class function Create: _CodeDirectionExpression;
		class function CreateRemote(const MachineName: string): _CodeDirectionExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeBinaryOperatorExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeBinaryOperatorExpression exposée
	// par la CoClasse CodeBinaryOperatorExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeBinaryOperatorExpression = class
		class function Create: _CodeBinaryOperatorExpression;
		class function CreateRemote(const MachineName: string): _CodeBinaryOperatorExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeIterationStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeIterationStatement exposée
	// par la CoClasse CodeIterationStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeIterationStatement = class
		class function Create: _CodeIterationStatement;
		class function CreateRemote(const MachineName: string): _CodeIterationStatement;
	end;

	// *********************************************************************//
	// La classe CoCodePrimitiveExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodePrimitiveExpression exposée
	// par la CoClasse CodePrimitiveExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodePrimitiveExpression = class
		class function Create: _CodePrimitiveExpression;
		class function CreateRemote(const MachineName: string): _CodePrimitiveExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeThrowExceptionStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeThrowExceptionStatement exposée
	// par la CoClasse CodeThrowExceptionStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeThrowExceptionStatement = class
		class function Create: _CodeThrowExceptionStatement;
		class function CreateRemote(const MachineName: string): _CodeThrowExceptionStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeArrayCreateExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeArrayCreateExpression exposée
	// par la CoClasse CodeArrayCreateExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeArrayCreateExpression = class
		class function Create: _CodeArrayCreateExpression;
		class function CreateRemote(const MachineName: string): _CodeArrayCreateExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeBaseReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeBaseReferenceExpression exposée
	// par la CoClasse CodeBaseReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeBaseReferenceExpression = class
		class function Create: _CodeBaseReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeBaseReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeCastExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCastExpression exposée
	// par la CoClasse CodeCastExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCastExpression = class
		class function Create: _CodeCastExpression;
		class function CreateRemote(const MachineName: string): _CodeCastExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeDelegateCreateExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDelegateCreateExpression exposée
	// par la CoClasse CodeDelegateCreateExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDelegateCreateExpression = class
		class function Create: _CodeDelegateCreateExpression;
		class function CreateRemote(const MachineName: string): _CodeDelegateCreateExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeFieldReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeFieldReferenceExpression exposée
	// par la CoClasse CodeFieldReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeFieldReferenceExpression = class
		class function Create: _CodeFieldReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeFieldReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeArgumentReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeArgumentReferenceExpression exposée
	// par la CoClasse CodeArgumentReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeArgumentReferenceExpression = class
		class function Create: _CodeArgumentReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeArgumentReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeVariableReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeVariableReferenceExpression exposée
	// par la CoClasse CodeVariableReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeVariableReferenceExpression = class
		class function Create: _CodeVariableReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeVariableReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeIndexerExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeIndexerExpression exposée
	// par la CoClasse CodeIndexerExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeIndexerExpression = class
		class function Create: _CodeIndexerExpression;
		class function CreateRemote(const MachineName: string): _CodeIndexerExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeArrayIndexerExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeArrayIndexerExpression exposée
	// par la CoClasse CodeArrayIndexerExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeArrayIndexerExpression = class
		class function Create: _CodeArrayIndexerExpression;
		class function CreateRemote(const MachineName: string): _CodeArrayIndexerExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeSnippetExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeSnippetExpression exposée
	// par la CoClasse CodeSnippetExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeSnippetExpression = class
		class function Create: _CodeSnippetExpression;
		class function CreateRemote(const MachineName: string): _CodeSnippetExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeMethodInvokeExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMethodInvokeExpression exposée
	// par la CoClasse CodeMethodInvokeExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMethodInvokeExpression = class
		class function Create: _CodeMethodInvokeExpression;
		class function CreateRemote(const MachineName: string): _CodeMethodInvokeExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeMethodReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMethodReferenceExpression exposée
	// par la CoClasse CodeMethodReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMethodReferenceExpression = class
		class function Create: _CodeMethodReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeMethodReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeEventReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeEventReferenceExpression exposée
	// par la CoClasse CodeEventReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeEventReferenceExpression = class
		class function Create: _CodeEventReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeEventReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeDelegateInvokeExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDelegateInvokeExpression exposée
	// par la CoClasse CodeDelegateInvokeExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDelegateInvokeExpression = class
		class function Create: _CodeDelegateInvokeExpression;
		class function CreateRemote(const MachineName: string): _CodeDelegateInvokeExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeObjectCreateExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeObjectCreateExpression exposée
	// par la CoClasse CodeObjectCreateExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeObjectCreateExpression = class
		class function Create: _CodeObjectCreateExpression;
		class function CreateRemote(const MachineName: string): _CodeObjectCreateExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeParameterDeclarationExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeParameterDeclarationExpression exposée
	// par la CoClasse CodeParameterDeclarationExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeParameterDeclarationExpression = class
		class function Create: _CodeParameterDeclarationExpression;
		class function CreateRemote(const MachineName: string): _CodeParameterDeclarationExpression;
	end;

	// *********************************************************************//
	// La classe CoCodePropertySetValueReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodePropertySetValueReferenceExpression exposée
	// par la CoClasse CodePropertySetValueReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodePropertySetValueReferenceExpression = class
		class function Create: _CodePropertySetValueReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodePropertySetValueReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeThisReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeThisReferenceExpression exposée
	// par la CoClasse CodeThisReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeThisReferenceExpression = class
		class function Create: _CodeThisReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeThisReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeExpressionStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeExpressionStatement exposée
	// par la CoClasse CodeExpressionStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeExpressionStatement = class
		class function Create: _CodeExpressionStatement;
		class function CreateRemote(const MachineName: string): _CodeExpressionStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeCommentStatementCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCommentStatementCollection exposée
	// par la CoClasse CodeCommentStatementCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCommentStatementCollection = class
		class function Create: _CodeCommentStatementCollection;
		class function CreateRemote(const MachineName: string): _CodeCommentStatementCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeComment fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeComment exposée
	// par la CoClasse CodeComment. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeComment = class
		class function Create: _CodeComment;
		class function CreateRemote(const MachineName: string): _CodeComment;
	end;

	// *********************************************************************//
	// La classe CoCodeMethodReturnStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMethodReturnStatement exposée
	// par la CoClasse CodeMethodReturnStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMethodReturnStatement = class
		class function Create: _CodeMethodReturnStatement;
		class function CreateRemote(const MachineName: string): _CodeMethodReturnStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeConditionStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeConditionStatement exposée
	// par la CoClasse CodeConditionStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeConditionStatement = class
		class function Create: _CodeConditionStatement;
		class function CreateRemote(const MachineName: string): _CodeConditionStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeTryCatchFinallyStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTryCatchFinallyStatement exposée
	// par la CoClasse CodeTryCatchFinallyStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTryCatchFinallyStatement = class
		class function Create: _CodeTryCatchFinallyStatement;
		class function CreateRemote(const MachineName: string): _CodeTryCatchFinallyStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeAssignStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAssignStatement exposée
	// par la CoClasse CodeAssignStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAssignStatement = class
		class function Create: _CodeAssignStatement;
		class function CreateRemote(const MachineName: string): _CodeAssignStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeAttachEventStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAttachEventStatement exposée
	// par la CoClasse CodeAttachEventStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAttachEventStatement = class
		class function Create: _CodeAttachEventStatement;
		class function CreateRemote(const MachineName: string): _CodeAttachEventStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeRemoveEventStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeRemoveEventStatement exposée
	// par la CoClasse CodeRemoveEventStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeRemoveEventStatement = class
		class function Create: _CodeRemoveEventStatement;
		class function CreateRemote(const MachineName: string): _CodeRemoveEventStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeSnippetStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeSnippetStatement exposée
	// par la CoClasse CodeSnippetStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeSnippetStatement = class
		class function Create: _CodeSnippetStatement;
		class function CreateRemote(const MachineName: string): _CodeSnippetStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeGotoStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeGotoStatement exposée
	// par la CoClasse CodeGotoStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeGotoStatement = class
		class function Create: _CodeGotoStatement;
		class function CreateRemote(const MachineName: string): _CodeGotoStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeLabeledStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeLabeledStatement exposée
	// par la CoClasse CodeLabeledStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeLabeledStatement = class
		class function Create: _CodeLabeledStatement;
		class function CreateRemote(const MachineName: string): _CodeLabeledStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeVariableDeclarationStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeVariableDeclarationStatement exposée
	// par la CoClasse CodeVariableDeclarationStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeVariableDeclarationStatement = class
		class function Create: _CodeVariableDeclarationStatement;
		class function CreateRemote(const MachineName: string): _CodeVariableDeclarationStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeLinePragma fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeLinePragma exposée
	// par la CoClasse CodeLinePragma. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeLinePragma = class
		class function Create: _CodeLinePragma;
		class function CreateRemote(const MachineName: string): _CodeLinePragma;
	end;

	// *********************************************************************//
	// La classe CoCodeMemberEvent fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMemberEvent exposée
	// par la CoClasse CodeMemberEvent. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMemberEvent = class
		class function Create: _CodeMemberEvent;
		class function CreateRemote(const MachineName: string): _CodeMemberEvent;
	end;

	// *********************************************************************//
	// La classe CoCodeMemberField fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMemberField exposée
	// par la CoClasse CodeMemberField. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMemberField = class
		class function Create: _CodeMemberField;
		class function CreateRemote(const MachineName: string): _CodeMemberField;
	end;

	// *********************************************************************//
	// La classe CoCodeSnippetTypeMember fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeSnippetTypeMember exposée
	// par la CoClasse CodeSnippetTypeMember. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeSnippetTypeMember = class
		class function Create: _CodeSnippetTypeMember;
		class function CreateRemote(const MachineName: string): _CodeSnippetTypeMember;
	end;

	// *********************************************************************//
	// La classe CoCodeMemberMethod fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMemberMethod exposée
	// par la CoClasse CodeMemberMethod. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMemberMethod = class
		class function Create: _CodeMemberMethod;
		class function CreateRemote(const MachineName: string): _CodeMemberMethod;
	end;

	// *********************************************************************//
	// La classe CoCodeEntryPointMethod fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeEntryPointMethod exposée
	// par la CoClasse CodeEntryPointMethod. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeEntryPointMethod = class
		class function Create: _CodeEntryPointMethod;
		class function CreateRemote(const MachineName: string): _CodeEntryPointMethod;
	end;

	// *********************************************************************//
	// La classe CoCodeMemberProperty fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeMemberProperty exposée
	// par la CoClasse CodeMemberProperty. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeMemberProperty = class
		class function Create: _CodeMemberProperty;
		class function CreateRemote(const MachineName: string): _CodeMemberProperty;
	end;

	// *********************************************************************//
	// La classe CoCodePropertyReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodePropertyReferenceExpression exposée
	// par la CoClasse CodePropertyReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodePropertyReferenceExpression = class
		class function Create: _CodePropertyReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodePropertyReferenceExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeConstructor fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeConstructor exposée
	// par la CoClasse CodeConstructor. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeConstructor = class
		class function Create: _CodeConstructor;
		class function CreateRemote(const MachineName: string): _CodeConstructor;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeConstructor fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeConstructor exposée
	// par la CoClasse CodeTypeConstructor. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeConstructor = class
		class function Create: _CodeTypeConstructor;
		class function CreateRemote(const MachineName: string): _CodeTypeConstructor;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeOfExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeOfExpression exposée
	// par la CoClasse CodeTypeOfExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeOfExpression = class
		class function Create: _CodeTypeOfExpression;
		class function CreateRemote(const MachineName: string): _CodeTypeOfExpression;
	end;

	// *********************************************************************//
	// La classe CoCodeDirectiveCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDirectiveCollection exposée
	// par la CoClasse CodeDirectiveCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDirectiveCollection = class
		class function Create: _CodeDirectiveCollection;
		class function CreateRemote(const MachineName: string): _CodeDirectiveCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeNamespaceImport fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeNamespaceImport exposée
	// par la CoClasse CodeNamespaceImport. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeNamespaceImport = class
		class function Create: _CodeNamespaceImport;
		class function CreateRemote(const MachineName: string): _CodeNamespaceImport;
	end;

	// *********************************************************************//
	// La classe CoCodeAttributeDeclarationCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAttributeDeclarationCollection exposée
	// par la CoClasse CodeAttributeDeclarationCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAttributeDeclarationCollection = class
		class function Create: _CodeAttributeDeclarationCollection;
		class function CreateRemote(const MachineName: string): _CodeAttributeDeclarationCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeExpressionCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeExpressionCollection exposée
	// par la CoClasse CodeExpressionCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeExpressionCollection = class
		class function Create: _CodeExpressionCollection;
		class function CreateRemote(const MachineName: string): _CodeExpressionCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeAttributeArgumentCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAttributeArgumentCollection exposée
	// par la CoClasse CodeAttributeArgumentCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAttributeArgumentCollection = class
		class function Create: _CodeAttributeArgumentCollection;
		class function CreateRemote(const MachineName: string): _CodeAttributeArgumentCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeAttributeDeclaration fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeAttributeDeclaration exposée
	// par la CoClasse CodeAttributeDeclaration. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeAttributeDeclaration = class
		class function Create: _CodeAttributeDeclaration;
		class function CreateRemote(const MachineName: string): _CodeAttributeDeclaration;
	end;

	// *********************************************************************//
	// La classe CoCodeCatchClause fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCatchClause exposée
	// par la CoClasse CodeCatchClause. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCatchClause = class
		class function Create: _CodeCatchClause;
		class function CreateRemote(const MachineName: string): _CodeCatchClause;
	end;

	// *********************************************************************//
	// La classe CoCodeStatementCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeStatementCollection exposée
	// par la CoClasse CodeStatementCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeStatementCollection = class
		class function Create: _CodeStatementCollection;
		class function CreateRemote(const MachineName: string): _CodeStatementCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeCatchClauseCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCatchClauseCollection exposée
	// par la CoClasse CodeCatchClauseCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCatchClauseCollection = class
		class function Create: _CodeCatchClauseCollection;
		class function CreateRemote(const MachineName: string): _CodeCatchClauseCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeChecksumPragma fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeChecksumPragma exposée
	// par la CoClasse CodeChecksumPragma. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeChecksumPragma = class
		class function Create: _CodeChecksumPragma;
		class function CreateRemote(const MachineName: string): _CodeChecksumPragma;
	end;

	// *********************************************************************//
	// La classe CoCodeDirective fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeDirective exposée
	// par la CoClasse CodeDirective. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeDirective = class
		class function Create: _CodeDirective;
		class function CreateRemote(const MachineName: string): _CodeDirective;
	end;

	// *********************************************************************//
	// La classe CoCodeObject fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeObject exposée
	// par la CoClasse CodeObject. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeObject = class
		class function Create: _CodeObject;
		class function CreateRemote(const MachineName: string): _CodeObject;
	end;

	// *********************************************************************//
	// La classe CoCodeCommentStatement fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeCommentStatement exposée
	// par la CoClasse CodeCommentStatement. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeCommentStatement = class
		class function Create: _CodeCommentStatement;
		class function CreateRemote(const MachineName: string): _CodeCommentStatement;
	end;

	// *********************************************************************//
	// La classe CoCodeNamespaceCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeNamespaceCollection exposée
	// par la CoClasse CodeNamespaceCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeNamespaceCollection = class
		class function Create: _CodeNamespaceCollection;
		class function CreateRemote(const MachineName: string): _CodeNamespaceCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeReferenceCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeReferenceCollection exposée
	// par la CoClasse CodeTypeReferenceCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeReferenceCollection = class
		class function Create: _CodeTypeReferenceCollection;
		class function CreateRemote(const MachineName: string): _CodeTypeReferenceCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeParameterDeclarationExpressionCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeParameterDeclarationExpressionCollection exposée
	// par la CoClasse CodeParameterDeclarationExpressionCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeParameterDeclarationExpressionCollection = class
		class function Create: _CodeParameterDeclarationExpressionCollection;
		class function CreateRemote(const MachineName: string): _CodeParameterDeclarationExpressionCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeParameterCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeParameterCollection exposée
	// par la CoClasse CodeTypeParameterCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeParameterCollection = class
		class function Create: _CodeTypeParameterCollection;
		class function CreateRemote(const MachineName: string): _CodeTypeParameterCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeDeclarationCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeDeclarationCollection exposée
	// par la CoClasse CodeTypeDeclarationCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeDeclarationCollection = class
		class function Create: _CodeTypeDeclarationCollection;
		class function CreateRemote(const MachineName: string): _CodeTypeDeclarationCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeNamespaceImportCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeNamespaceImportCollection exposée
	// par la CoClasse CodeNamespaceImportCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeNamespaceImportCollection = class
		class function Create: _CodeNamespaceImportCollection;
		class function CreateRemote(const MachineName: string): _CodeNamespaceImportCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeRegionDirective fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeRegionDirective exposée
	// par la CoClasse CodeRegionDirective. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeRegionDirective = class
		class function Create: _CodeRegionDirective;
		class function CreateRemote(const MachineName: string): _CodeRegionDirective;
	end;

	// *********************************************************************//
	// La classe CoCodeSnippetCompileUnit fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeSnippetCompileUnit exposée
	// par la CoClasse CodeSnippetCompileUnit. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeSnippetCompileUnit = class
		class function Create: _CodeSnippetCompileUnit;
		class function CreateRemote(const MachineName: string): _CodeSnippetCompileUnit;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeMemberCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeMemberCollection exposée
	// par la CoClasse CodeTypeMemberCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeMemberCollection = class
		class function Create: _CodeTypeMemberCollection;
		class function CreateRemote(const MachineName: string): _CodeTypeMemberCollection;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeDelegate fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeDelegate exposée
	// par la CoClasse CodeTypeDelegate. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeDelegate = class
		class function Create: _CodeTypeDelegate;
		class function CreateRemote(const MachineName: string): _CodeTypeDelegate;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeParameter fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeParameter exposée
	// par la CoClasse CodeTypeParameter. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeParameter = class
		class function Create: _CodeTypeParameter;
		class function CreateRemote(const MachineName: string): _CodeTypeParameter;
	end;

	// *********************************************************************//
	// La classe CoCodeTypeReferenceExpression fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CodeTypeReferenceExpression exposée
	// par la CoClasse CodeTypeReferenceExpression. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCodeTypeReferenceExpression = class
		class function Create: _CodeTypeReferenceExpression;
		class function CreateRemote(const MachineName: string): _CodeTypeReferenceExpression;
	end;

	// *********************************************************************//
	// La classe Cocomponent fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _Component exposée
	// par la CoClasse component. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	Cocomponent = class
		class function Create: _Component;
		class function CreateRemote(const MachineName: string): _Component;
	end;

	// *********************************************************************//
	// La classe CoAttributeCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _AttributeCollection exposée
	// par la CoClasse AttributeCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoAttributeCollection = class
		class function Create: _AttributeCollection;
		class function CreateRemote(const MachineName: string): _AttributeCollection;
	end;

	// *********************************************************************//
	// La classe CoPropertyDescriptor fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _PropertyDescriptor exposée
	// par la CoClasse PropertyDescriptor. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoPropertyDescriptor = class
		class function Create: _PropertyDescriptor;
		class function CreateRemote(const MachineName: string): _PropertyDescriptor;
	end;

	// *********************************************************************//
	// La classe CoComponentCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentCollection exposée
	// par la CoClasse ComponentCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentCollection = class
		class function Create: _ComponentCollection;
		class function CreateRemote(const MachineName: string): _ComponentCollection;
	end;

	// *********************************************************************//
	// La classe CoEventDescriptor fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _EventDescriptor exposée
	// par la CoClasse EventDescriptor. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoEventDescriptor = class
		class function Create: _EventDescriptor;
		class function CreateRemote(const MachineName: string): _EventDescriptor;
	end;

	// *********************************************************************//
	// La classe CoEventDescriptorCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _EventDescriptorCollection exposée
	// par la CoClasse EventDescriptorCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoEventDescriptorCollection = class
		class function Create: _EventDescriptorCollection;
		class function CreateRemote(const MachineName: string): _EventDescriptorCollection;
	end;

	// *********************************************************************//
	// La classe CoMemberDescriptor fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _MemberDescriptor exposée
	// par la CoClasse MemberDescriptor. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoMemberDescriptor = class
		class function Create: _MemberDescriptor;
		class function CreateRemote(const MachineName: string): _MemberDescriptor;
	end;

	// *********************************************************************//
	// La classe CoMarshalByValueComponent fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _MarshalByValueComponent exposée
	// par la CoClasse MarshalByValueComponent. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoMarshalByValueComponent = class
		class function Create: _MarshalByValueComponent;
		class function CreateRemote(const MachineName: string): _MarshalByValueComponent;
	end;

	// *********************************************************************//
	// La classe CoCommandID fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _CommandID exposée
	// par la CoClasse CommandID. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCommandID = class
		class function Create: _CommandID;
		class function CreateRemote(const MachineName: string): _CommandID;
	end;

	// *********************************************************************//
	// La classe CoComponentChangedEventArgs fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentChangedEventArgs exposée
	// par la CoClasse ComponentChangedEventArgs. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentChangedEventArgs = class
		class function Create: _ComponentChangedEventArgs;
		class function CreateRemote(const MachineName: string): _ComponentChangedEventArgs;
	end;

	// *********************************************************************//
	// La classe CoComponentChangedEventHandler fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentChangedEventHandler exposée
	// par la CoClasse ComponentChangedEventHandler. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentChangedEventHandler = class
		class function Create: _ComponentChangedEventHandler;
		class function CreateRemote(const MachineName: string): _ComponentChangedEventHandler;
	end;

	// *********************************************************************//
	// La classe CoComponentChangingEventArgs fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentChangingEventArgs exposée
	// par la CoClasse ComponentChangingEventArgs. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentChangingEventArgs = class
		class function Create: _ComponentChangingEventArgs;
		class function CreateRemote(const MachineName: string): _ComponentChangingEventArgs;
	end;

	// *********************************************************************//
	// La classe CoComponentChangingEventHandler fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentChangingEventHandler exposée
	// par la CoClasse ComponentChangingEventHandler. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentChangingEventHandler = class
		class function Create: _ComponentChangingEventHandler;
		class function CreateRemote(const MachineName: string): _ComponentChangingEventHandler;
	end;

	// *********************************************************************//
	// La classe CoComponentEventArgs fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentEventArgs exposée
	// par la CoClasse ComponentEventArgs. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentEventArgs = class
		class function Create: _ComponentEventArgs;
		class function CreateRemote(const MachineName: string): _ComponentEventArgs;
	end;

	// *********************************************************************//
	// La classe CoComponentEventHandler fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentEventHandler exposée
	// par la CoClasse ComponentEventHandler. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentEventHandler = class
		class function Create: _ComponentEventHandler;
		class function CreateRemote(const MachineName: string): _ComponentEventHandler;
	end;

	// *********************************************************************//
	// La classe CoComponentRenameEventArgs fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentRenameEventArgs exposée
	// par la CoClasse ComponentRenameEventArgs. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentRenameEventArgs = class
		class function Create: _ComponentRenameEventArgs;
		class function CreateRemote(const MachineName: string): _ComponentRenameEventArgs;
	end;

	// *********************************************************************//
	// La classe CoComponentRenameEventHandler fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ComponentRenameEventHandler exposée
	// par la CoClasse ComponentRenameEventHandler. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoComponentRenameEventHandler = class
		class function Create: _ComponentRenameEventHandler;
		class function CreateRemote(const MachineName: string): _ComponentRenameEventHandler;
	end;

	// *********************************************************************//
	// La classe CoDesignerTransactionCloseEventArgs fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _DesignerTransactionCloseEventArgs exposée
	// par la CoClasse DesignerTransactionCloseEventArgs. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoDesignerTransactionCloseEventArgs = class
		class function Create: _DesignerTransactionCloseEventArgs;
		class function CreateRemote(const MachineName: string): _DesignerTransactionCloseEventArgs;
	end;

	// *********************************************************************//
	// La classe CoDesignerTransactionCloseEventHandler fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _DesignerTransactionCloseEventHandler exposée
	// par la CoClasse DesignerTransactionCloseEventHandler. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoDesignerTransactionCloseEventHandler = class
		class function Create: _DesignerTransactionCloseEventHandler;
		class function CreateRemote(const MachineName: string): _DesignerTransactionCloseEventHandler;
	end;

	// *********************************************************************//
	// La classe CoDesignerVerb fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _DesignerVerb exposée
	// par la CoClasse DesignerVerb. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoDesignerVerb = class
		class function Create: _DesignerVerb;
		class function CreateRemote(const MachineName: string): _DesignerVerb;
	end;

	// *********************************************************************//
	// La classe CoMenuCommand fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _MenuCommand exposée
	// par la CoClasse MenuCommand. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoMenuCommand = class
		class function Create: _MenuCommand;
		class function CreateRemote(const MachineName: string): _MenuCommand;
	end;

	// *********************************************************************//
	// La classe CoDesignerVerbCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _DesignerVerbCollection exposée
	// par la CoClasse DesignerVerbCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoDesignerVerbCollection = class
		class function Create: _DesignerVerbCollection;
		class function CreateRemote(const MachineName: string): _DesignerVerbCollection;
	end;

	// *********************************************************************//
	// La classe CoServiceCreatorCallback fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _ServiceCreatorCallback exposée
	// par la CoClasse ServiceCreatorCallback. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoServiceCreatorCallback = class
		class function Create: _ServiceCreatorCallback;
		class function CreateRemote(const MachineName: string): _ServiceCreatorCallback;
	end;

	// *********************************************************************//
	// La classe CoDesignerLoader fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _DesignerLoader exposée
	// par la CoClasse DesignerLoader. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoDesignerLoader = class
		class function Create: _DesignerLoader;
		class function CreateRemote(const MachineName: string): _DesignerLoader;
	end;

	// *********************************************************************//
	// La classe CoPerformanceCounterManager fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _PerformanceCounterManager exposée
	// par la CoClasse PerformanceCounterManager. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoPerformanceCounterManager = class
		class function Create: _PerformanceCounterManager;
		class function CreateRemote(const MachineName: string): _PerformanceCounterManager;
	end;

	// *********************************************************************//
	// La classe CoWebHeaderCollection fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _WebHeaderCollection exposée
	// par la CoClasse WebHeaderCollection. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoWebHeaderCollection = class
		class function Create: _WebHeaderCollection;
		class function CreateRemote(const MachineName: string): _WebHeaderCollection;
	end;

	// *********************************************************************//
	// La classe CoWebClient fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _WebClient exposée
	// par la CoClasse WebClient. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoWebClient = class
		class function Create: _WebClient;
		class function CreateRemote(const MachineName: string): _WebClient;
	end;

	// *********************************************************************//
	// La classe CoStandardOleMarshalObject fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _StandardOleMarshalObject exposée
	// par la CoClasse StandardOleMarshalObject. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoStandardOleMarshalObject = class
		class function Create: _StandardOleMarshalObject;
		class function CreateRemote(const MachineName: string): _StandardOleMarshalObject;
	end;

implementation

uses System.Win.ComObj;

class function CoCodeTypeMember.Create: _CodeTypeMember;
begin
	Result := CreateComObject(CLASS_CodeTypeMember) as _CodeTypeMember;
end;

class function CoCodeTypeMember.CreateRemote(const MachineName: string): _CodeTypeMember;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeMember) as _CodeTypeMember;
end;

class function CoCodeTypeReference.Create: _CodeTypeReference;
begin
	Result := CreateComObject(CLASS_CodeTypeReference) as _CodeTypeReference;
end;

class function CoCodeTypeReference.CreateRemote(const MachineName: string): _CodeTypeReference;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeReference) as _CodeTypeReference;
end;

class function CoCodeCompileUnit.Create: _CodeCompileUnit;
begin
	Result := CreateComObject(CLASS_CodeCompileUnit) as _CodeCompileUnit;
end;

class function CoCodeCompileUnit.CreateRemote(const MachineName: string): _CodeCompileUnit;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCompileUnit) as _CodeCompileUnit;
end;

class function CoCodeTypeDeclaration.Create: _CodeTypeDeclaration;
begin
	Result := CreateComObject(CLASS_CodeTypeDeclaration) as _CodeTypeDeclaration;
end;

class function CoCodeTypeDeclaration.CreateRemote(const MachineName: string): _CodeTypeDeclaration;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeDeclaration) as _CodeTypeDeclaration;
end;

class function CoCodeExpression.Create: _CodeExpression;
begin
	Result := CreateComObject(CLASS_CodeExpression) as _CodeExpression;
end;

class function CoCodeExpression.CreateRemote(const MachineName: string): _CodeExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeExpression) as _CodeExpression;
end;

class function CoCodeNamespace.Create: _CodeNamespace;
begin
	Result := CreateComObject(CLASS_CodeNamespace) as _CodeNamespace;
end;

class function CoCodeNamespace.CreateRemote(const MachineName: string): _CodeNamespace;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeNamespace) as _CodeNamespace;
end;

class function CoCodeStatement.Create: _CodeStatement;
begin
	Result := CreateComObject(CLASS_CodeStatement) as _CodeStatement;
end;

class function CoCodeStatement.CreateRemote(const MachineName: string): _CodeStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeStatement) as _CodeStatement;
end;

class function CoCodeDomProvider.Create: _CodeDomProvider;
begin
	Result := CreateComObject(CLASS_CodeDomProvider) as _CodeDomProvider;
end;

class function CoCodeDomProvider.CreateRemote(const MachineName: string): _CodeDomProvider;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDomProvider) as _CodeDomProvider;
end;

class function CoTypeConverter.Create: _TypeConverter;
begin
	Result := CreateComObject(CLASS_TypeConverter) as _TypeConverter;
end;

class function CoTypeConverter.CreateRemote(const MachineName: string): _TypeConverter;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_TypeConverter) as _TypeConverter;
end;

class function CoCodeAttributeArgument.Create: _CodeAttributeArgument;
begin
	Result := CreateComObject(CLASS_CodeAttributeArgument) as _CodeAttributeArgument;
end;

class function CoCodeAttributeArgument.CreateRemote(const MachineName: string): _CodeAttributeArgument;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAttributeArgument) as _CodeAttributeArgument;
end;

class function CoCodeDefaultValueExpression.Create: _CodeDefaultValueExpression;
begin
	Result := CreateComObject(CLASS_CodeDefaultValueExpression) as _CodeDefaultValueExpression;
end;

class function CoCodeDefaultValueExpression.CreateRemote(const MachineName: string): _CodeDefaultValueExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDefaultValueExpression) as _CodeDefaultValueExpression;
end;

class function CoCodeDirectionExpression.Create: _CodeDirectionExpression;
begin
	Result := CreateComObject(CLASS_CodeDirectionExpression) as _CodeDirectionExpression;
end;

class function CoCodeDirectionExpression.CreateRemote(const MachineName: string): _CodeDirectionExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDirectionExpression) as _CodeDirectionExpression;
end;

class function CoCodeBinaryOperatorExpression.Create: _CodeBinaryOperatorExpression;
begin
	Result := CreateComObject(CLASS_CodeBinaryOperatorExpression) as _CodeBinaryOperatorExpression;
end;

class function CoCodeBinaryOperatorExpression.CreateRemote(const MachineName: string): _CodeBinaryOperatorExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeBinaryOperatorExpression) as _CodeBinaryOperatorExpression;
end;

class function CoCodeIterationStatement.Create: _CodeIterationStatement;
begin
	Result := CreateComObject(CLASS_CodeIterationStatement) as _CodeIterationStatement;
end;

class function CoCodeIterationStatement.CreateRemote(const MachineName: string): _CodeIterationStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeIterationStatement) as _CodeIterationStatement;
end;

class function CoCodePrimitiveExpression.Create: _CodePrimitiveExpression;
begin
	Result := CreateComObject(CLASS_CodePrimitiveExpression) as _CodePrimitiveExpression;
end;

class function CoCodePrimitiveExpression.CreateRemote(const MachineName: string): _CodePrimitiveExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodePrimitiveExpression) as _CodePrimitiveExpression;
end;

class function CoCodeThrowExceptionStatement.Create: _CodeThrowExceptionStatement;
begin
	Result := CreateComObject(CLASS_CodeThrowExceptionStatement) as _CodeThrowExceptionStatement;
end;

class function CoCodeThrowExceptionStatement.CreateRemote(const MachineName: string): _CodeThrowExceptionStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeThrowExceptionStatement) as _CodeThrowExceptionStatement;
end;

class function CoCodeArrayCreateExpression.Create: _CodeArrayCreateExpression;
begin
	Result := CreateComObject(CLASS_CodeArrayCreateExpression) as _CodeArrayCreateExpression;
end;

class function CoCodeArrayCreateExpression.CreateRemote(const MachineName: string): _CodeArrayCreateExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeArrayCreateExpression) as _CodeArrayCreateExpression;
end;

class function CoCodeBaseReferenceExpression.Create: _CodeBaseReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeBaseReferenceExpression) as _CodeBaseReferenceExpression;
end;

class function CoCodeBaseReferenceExpression.CreateRemote(const MachineName: string): _CodeBaseReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeBaseReferenceExpression) as _CodeBaseReferenceExpression;
end;

class function CoCodeCastExpression.Create: _CodeCastExpression;
begin
	Result := CreateComObject(CLASS_CodeCastExpression) as _CodeCastExpression;
end;

class function CoCodeCastExpression.CreateRemote(const MachineName: string): _CodeCastExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCastExpression) as _CodeCastExpression;
end;

class function CoCodeDelegateCreateExpression.Create: _CodeDelegateCreateExpression;
begin
	Result := CreateComObject(CLASS_CodeDelegateCreateExpression) as _CodeDelegateCreateExpression;
end;

class function CoCodeDelegateCreateExpression.CreateRemote(const MachineName: string): _CodeDelegateCreateExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDelegateCreateExpression) as _CodeDelegateCreateExpression;
end;

class function CoCodeFieldReferenceExpression.Create: _CodeFieldReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeFieldReferenceExpression) as _CodeFieldReferenceExpression;
end;

class function CoCodeFieldReferenceExpression.CreateRemote(const MachineName: string): _CodeFieldReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeFieldReferenceExpression) as _CodeFieldReferenceExpression;
end;

class function CoCodeArgumentReferenceExpression.Create: _CodeArgumentReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeArgumentReferenceExpression) as _CodeArgumentReferenceExpression;
end;

class function CoCodeArgumentReferenceExpression.CreateRemote(const MachineName: string): _CodeArgumentReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeArgumentReferenceExpression) as _CodeArgumentReferenceExpression;
end;

class function CoCodeVariableReferenceExpression.Create: _CodeVariableReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeVariableReferenceExpression) as _CodeVariableReferenceExpression;
end;

class function CoCodeVariableReferenceExpression.CreateRemote(const MachineName: string): _CodeVariableReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeVariableReferenceExpression) as _CodeVariableReferenceExpression;
end;

class function CoCodeIndexerExpression.Create: _CodeIndexerExpression;
begin
	Result := CreateComObject(CLASS_CodeIndexerExpression) as _CodeIndexerExpression;
end;

class function CoCodeIndexerExpression.CreateRemote(const MachineName: string): _CodeIndexerExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeIndexerExpression) as _CodeIndexerExpression;
end;

class function CoCodeArrayIndexerExpression.Create: _CodeArrayIndexerExpression;
begin
	Result := CreateComObject(CLASS_CodeArrayIndexerExpression) as _CodeArrayIndexerExpression;
end;

class function CoCodeArrayIndexerExpression.CreateRemote(const MachineName: string): _CodeArrayIndexerExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeArrayIndexerExpression) as _CodeArrayIndexerExpression;
end;

class function CoCodeSnippetExpression.Create: _CodeSnippetExpression;
begin
	Result := CreateComObject(CLASS_CodeSnippetExpression) as _CodeSnippetExpression;
end;

class function CoCodeSnippetExpression.CreateRemote(const MachineName: string): _CodeSnippetExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeSnippetExpression) as _CodeSnippetExpression;
end;

class function CoCodeMethodInvokeExpression.Create: _CodeMethodInvokeExpression;
begin
	Result := CreateComObject(CLASS_CodeMethodInvokeExpression) as _CodeMethodInvokeExpression;
end;

class function CoCodeMethodInvokeExpression.CreateRemote(const MachineName: string): _CodeMethodInvokeExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMethodInvokeExpression) as _CodeMethodInvokeExpression;
end;

class function CoCodeMethodReferenceExpression.Create: _CodeMethodReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeMethodReferenceExpression) as _CodeMethodReferenceExpression;
end;

class function CoCodeMethodReferenceExpression.CreateRemote(const MachineName: string): _CodeMethodReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMethodReferenceExpression) as _CodeMethodReferenceExpression;
end;

class function CoCodeEventReferenceExpression.Create: _CodeEventReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeEventReferenceExpression) as _CodeEventReferenceExpression;
end;

class function CoCodeEventReferenceExpression.CreateRemote(const MachineName: string): _CodeEventReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeEventReferenceExpression) as _CodeEventReferenceExpression;
end;

class function CoCodeDelegateInvokeExpression.Create: _CodeDelegateInvokeExpression;
begin
	Result := CreateComObject(CLASS_CodeDelegateInvokeExpression) as _CodeDelegateInvokeExpression;
end;

class function CoCodeDelegateInvokeExpression.CreateRemote(const MachineName: string): _CodeDelegateInvokeExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDelegateInvokeExpression) as _CodeDelegateInvokeExpression;
end;

class function CoCodeObjectCreateExpression.Create: _CodeObjectCreateExpression;
begin
	Result := CreateComObject(CLASS_CodeObjectCreateExpression) as _CodeObjectCreateExpression;
end;

class function CoCodeObjectCreateExpression.CreateRemote(const MachineName: string): _CodeObjectCreateExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeObjectCreateExpression) as _CodeObjectCreateExpression;
end;

class function CoCodeParameterDeclarationExpression.Create: _CodeParameterDeclarationExpression;
begin
	Result := CreateComObject(CLASS_CodeParameterDeclarationExpression) as _CodeParameterDeclarationExpression;
end;

class function CoCodeParameterDeclarationExpression.CreateRemote(const MachineName: string): _CodeParameterDeclarationExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeParameterDeclarationExpression) as _CodeParameterDeclarationExpression;
end;

class function CoCodePropertySetValueReferenceExpression.Create: _CodePropertySetValueReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodePropertySetValueReferenceExpression) as _CodePropertySetValueReferenceExpression;
end;

class function CoCodePropertySetValueReferenceExpression.CreateRemote(const MachineName: string): _CodePropertySetValueReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodePropertySetValueReferenceExpression) as _CodePropertySetValueReferenceExpression;
end;

class function CoCodeThisReferenceExpression.Create: _CodeThisReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeThisReferenceExpression) as _CodeThisReferenceExpression;
end;

class function CoCodeThisReferenceExpression.CreateRemote(const MachineName: string): _CodeThisReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeThisReferenceExpression) as _CodeThisReferenceExpression;
end;

class function CoCodeExpressionStatement.Create: _CodeExpressionStatement;
begin
	Result := CreateComObject(CLASS_CodeExpressionStatement) as _CodeExpressionStatement;
end;

class function CoCodeExpressionStatement.CreateRemote(const MachineName: string): _CodeExpressionStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeExpressionStatement) as _CodeExpressionStatement;
end;

class function CoCodeCommentStatementCollection.Create: _CodeCommentStatementCollection;
begin
	Result := CreateComObject(CLASS_CodeCommentStatementCollection) as _CodeCommentStatementCollection;
end;

class function CoCodeCommentStatementCollection.CreateRemote(const MachineName: string): _CodeCommentStatementCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCommentStatementCollection) as _CodeCommentStatementCollection;
end;

class function CoCodeComment.Create: _CodeComment;
begin
	Result := CreateComObject(CLASS_CodeComment) as _CodeComment;
end;

class function CoCodeComment.CreateRemote(const MachineName: string): _CodeComment;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeComment) as _CodeComment;
end;

class function CoCodeMethodReturnStatement.Create: _CodeMethodReturnStatement;
begin
	Result := CreateComObject(CLASS_CodeMethodReturnStatement) as _CodeMethodReturnStatement;
end;

class function CoCodeMethodReturnStatement.CreateRemote(const MachineName: string): _CodeMethodReturnStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMethodReturnStatement) as _CodeMethodReturnStatement;
end;

class function CoCodeConditionStatement.Create: _CodeConditionStatement;
begin
	Result := CreateComObject(CLASS_CodeConditionStatement) as _CodeConditionStatement;
end;

class function CoCodeConditionStatement.CreateRemote(const MachineName: string): _CodeConditionStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeConditionStatement) as _CodeConditionStatement;
end;

class function CoCodeTryCatchFinallyStatement.Create: _CodeTryCatchFinallyStatement;
begin
	Result := CreateComObject(CLASS_CodeTryCatchFinallyStatement) as _CodeTryCatchFinallyStatement;
end;

class function CoCodeTryCatchFinallyStatement.CreateRemote(const MachineName: string): _CodeTryCatchFinallyStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTryCatchFinallyStatement) as _CodeTryCatchFinallyStatement;
end;

class function CoCodeAssignStatement.Create: _CodeAssignStatement;
begin
	Result := CreateComObject(CLASS_CodeAssignStatement) as _CodeAssignStatement;
end;

class function CoCodeAssignStatement.CreateRemote(const MachineName: string): _CodeAssignStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAssignStatement) as _CodeAssignStatement;
end;

class function CoCodeAttachEventStatement.Create: _CodeAttachEventStatement;
begin
	Result := CreateComObject(CLASS_CodeAttachEventStatement) as _CodeAttachEventStatement;
end;

class function CoCodeAttachEventStatement.CreateRemote(const MachineName: string): _CodeAttachEventStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAttachEventStatement) as _CodeAttachEventStatement;
end;

class function CoCodeRemoveEventStatement.Create: _CodeRemoveEventStatement;
begin
	Result := CreateComObject(CLASS_CodeRemoveEventStatement) as _CodeRemoveEventStatement;
end;

class function CoCodeRemoveEventStatement.CreateRemote(const MachineName: string): _CodeRemoveEventStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeRemoveEventStatement) as _CodeRemoveEventStatement;
end;

class function CoCodeSnippetStatement.Create: _CodeSnippetStatement;
begin
	Result := CreateComObject(CLASS_CodeSnippetStatement) as _CodeSnippetStatement;
end;

class function CoCodeSnippetStatement.CreateRemote(const MachineName: string): _CodeSnippetStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeSnippetStatement) as _CodeSnippetStatement;
end;

class function CoCodeGotoStatement.Create: _CodeGotoStatement;
begin
	Result := CreateComObject(CLASS_CodeGotoStatement) as _CodeGotoStatement;
end;

class function CoCodeGotoStatement.CreateRemote(const MachineName: string): _CodeGotoStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeGotoStatement) as _CodeGotoStatement;
end;

class function CoCodeLabeledStatement.Create: _CodeLabeledStatement;
begin
	Result := CreateComObject(CLASS_CodeLabeledStatement) as _CodeLabeledStatement;
end;

class function CoCodeLabeledStatement.CreateRemote(const MachineName: string): _CodeLabeledStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeLabeledStatement) as _CodeLabeledStatement;
end;

class function CoCodeVariableDeclarationStatement.Create: _CodeVariableDeclarationStatement;
begin
	Result := CreateComObject(CLASS_CodeVariableDeclarationStatement) as _CodeVariableDeclarationStatement;
end;

class function CoCodeVariableDeclarationStatement.CreateRemote(const MachineName: string): _CodeVariableDeclarationStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeVariableDeclarationStatement) as _CodeVariableDeclarationStatement;
end;

class function CoCodeLinePragma.Create: _CodeLinePragma;
begin
	Result := CreateComObject(CLASS_CodeLinePragma) as _CodeLinePragma;
end;

class function CoCodeLinePragma.CreateRemote(const MachineName: string): _CodeLinePragma;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeLinePragma) as _CodeLinePragma;
end;

class function CoCodeMemberEvent.Create: _CodeMemberEvent;
begin
	Result := CreateComObject(CLASS_CodeMemberEvent) as _CodeMemberEvent;
end;

class function CoCodeMemberEvent.CreateRemote(const MachineName: string): _CodeMemberEvent;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMemberEvent) as _CodeMemberEvent;
end;

class function CoCodeMemberField.Create: _CodeMemberField;
begin
	Result := CreateComObject(CLASS_CodeMemberField) as _CodeMemberField;
end;

class function CoCodeMemberField.CreateRemote(const MachineName: string): _CodeMemberField;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMemberField) as _CodeMemberField;
end;

class function CoCodeSnippetTypeMember.Create: _CodeSnippetTypeMember;
begin
	Result := CreateComObject(CLASS_CodeSnippetTypeMember) as _CodeSnippetTypeMember;
end;

class function CoCodeSnippetTypeMember.CreateRemote(const MachineName: string): _CodeSnippetTypeMember;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeSnippetTypeMember) as _CodeSnippetTypeMember;
end;

class function CoCodeMemberMethod.Create: _CodeMemberMethod;
begin
	Result := CreateComObject(CLASS_CodeMemberMethod) as _CodeMemberMethod;
end;

class function CoCodeMemberMethod.CreateRemote(const MachineName: string): _CodeMemberMethod;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMemberMethod) as _CodeMemberMethod;
end;

class function CoCodeEntryPointMethod.Create: _CodeEntryPointMethod;
begin
	Result := CreateComObject(CLASS_CodeEntryPointMethod) as _CodeEntryPointMethod;
end;

class function CoCodeEntryPointMethod.CreateRemote(const MachineName: string): _CodeEntryPointMethod;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeEntryPointMethod) as _CodeEntryPointMethod;
end;

class function CoCodeMemberProperty.Create: _CodeMemberProperty;
begin
	Result := CreateComObject(CLASS_CodeMemberProperty) as _CodeMemberProperty;
end;

class function CoCodeMemberProperty.CreateRemote(const MachineName: string): _CodeMemberProperty;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeMemberProperty) as _CodeMemberProperty;
end;

class function CoCodePropertyReferenceExpression.Create: _CodePropertyReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodePropertyReferenceExpression) as _CodePropertyReferenceExpression;
end;

class function CoCodePropertyReferenceExpression.CreateRemote(const MachineName: string): _CodePropertyReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodePropertyReferenceExpression) as _CodePropertyReferenceExpression;
end;

class function CoCodeConstructor.Create: _CodeConstructor;
begin
	Result := CreateComObject(CLASS_CodeConstructor) as _CodeConstructor;
end;

class function CoCodeConstructor.CreateRemote(const MachineName: string): _CodeConstructor;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeConstructor) as _CodeConstructor;
end;

class function CoCodeTypeConstructor.Create: _CodeTypeConstructor;
begin
	Result := CreateComObject(CLASS_CodeTypeConstructor) as _CodeTypeConstructor;
end;

class function CoCodeTypeConstructor.CreateRemote(const MachineName: string): _CodeTypeConstructor;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeConstructor) as _CodeTypeConstructor;
end;

class function CoCodeTypeOfExpression.Create: _CodeTypeOfExpression;
begin
	Result := CreateComObject(CLASS_CodeTypeOfExpression) as _CodeTypeOfExpression;
end;

class function CoCodeTypeOfExpression.CreateRemote(const MachineName: string): _CodeTypeOfExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeOfExpression) as _CodeTypeOfExpression;
end;

class function CoCodeDirectiveCollection.Create: _CodeDirectiveCollection;
begin
	Result := CreateComObject(CLASS_CodeDirectiveCollection) as _CodeDirectiveCollection;
end;

class function CoCodeDirectiveCollection.CreateRemote(const MachineName: string): _CodeDirectiveCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDirectiveCollection) as _CodeDirectiveCollection;
end;

class function CoCodeNamespaceImport.Create: _CodeNamespaceImport;
begin
	Result := CreateComObject(CLASS_CodeNamespaceImport) as _CodeNamespaceImport;
end;

class function CoCodeNamespaceImport.CreateRemote(const MachineName: string): _CodeNamespaceImport;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeNamespaceImport) as _CodeNamespaceImport;
end;

class function CoCodeAttributeDeclarationCollection.Create: _CodeAttributeDeclarationCollection;
begin
	Result := CreateComObject(CLASS_CodeAttributeDeclarationCollection) as _CodeAttributeDeclarationCollection;
end;

class function CoCodeAttributeDeclarationCollection.CreateRemote(const MachineName: string): _CodeAttributeDeclarationCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAttributeDeclarationCollection) as _CodeAttributeDeclarationCollection;
end;

class function CoCodeExpressionCollection.Create: _CodeExpressionCollection;
begin
	Result := CreateComObject(CLASS_CodeExpressionCollection) as _CodeExpressionCollection;
end;

class function CoCodeExpressionCollection.CreateRemote(const MachineName: string): _CodeExpressionCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeExpressionCollection) as _CodeExpressionCollection;
end;

class function CoCodeAttributeArgumentCollection.Create: _CodeAttributeArgumentCollection;
begin
	Result := CreateComObject(CLASS_CodeAttributeArgumentCollection) as _CodeAttributeArgumentCollection;
end;

class function CoCodeAttributeArgumentCollection.CreateRemote(const MachineName: string): _CodeAttributeArgumentCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAttributeArgumentCollection) as _CodeAttributeArgumentCollection;
end;

class function CoCodeAttributeDeclaration.Create: _CodeAttributeDeclaration;
begin
	Result := CreateComObject(CLASS_CodeAttributeDeclaration) as _CodeAttributeDeclaration;
end;

class function CoCodeAttributeDeclaration.CreateRemote(const MachineName: string): _CodeAttributeDeclaration;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeAttributeDeclaration) as _CodeAttributeDeclaration;
end;

class function CoCodeCatchClause.Create: _CodeCatchClause;
begin
	Result := CreateComObject(CLASS_CodeCatchClause) as _CodeCatchClause;
end;

class function CoCodeCatchClause.CreateRemote(const MachineName: string): _CodeCatchClause;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCatchClause) as _CodeCatchClause;
end;

class function CoCodeStatementCollection.Create: _CodeStatementCollection;
begin
	Result := CreateComObject(CLASS_CodeStatementCollection) as _CodeStatementCollection;
end;

class function CoCodeStatementCollection.CreateRemote(const MachineName: string): _CodeStatementCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeStatementCollection) as _CodeStatementCollection;
end;

class function CoCodeCatchClauseCollection.Create: _CodeCatchClauseCollection;
begin
	Result := CreateComObject(CLASS_CodeCatchClauseCollection) as _CodeCatchClauseCollection;
end;

class function CoCodeCatchClauseCollection.CreateRemote(const MachineName: string): _CodeCatchClauseCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCatchClauseCollection) as _CodeCatchClauseCollection;
end;

class function CoCodeChecksumPragma.Create: _CodeChecksumPragma;
begin
	Result := CreateComObject(CLASS_CodeChecksumPragma) as _CodeChecksumPragma;
end;

class function CoCodeChecksumPragma.CreateRemote(const MachineName: string): _CodeChecksumPragma;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeChecksumPragma) as _CodeChecksumPragma;
end;

class function CoCodeDirective.Create: _CodeDirective;
begin
	Result := CreateComObject(CLASS_CodeDirective) as _CodeDirective;
end;

class function CoCodeDirective.CreateRemote(const MachineName: string): _CodeDirective;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeDirective) as _CodeDirective;
end;

class function CoCodeObject.Create: _CodeObject;
begin
	Result := CreateComObject(CLASS_CodeObject) as _CodeObject;
end;

class function CoCodeObject.CreateRemote(const MachineName: string): _CodeObject;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeObject) as _CodeObject;
end;

class function CoCodeCommentStatement.Create: _CodeCommentStatement;
begin
	Result := CreateComObject(CLASS_CodeCommentStatement) as _CodeCommentStatement;
end;

class function CoCodeCommentStatement.CreateRemote(const MachineName: string): _CodeCommentStatement;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeCommentStatement) as _CodeCommentStatement;
end;

class function CoCodeNamespaceCollection.Create: _CodeNamespaceCollection;
begin
	Result := CreateComObject(CLASS_CodeNamespaceCollection) as _CodeNamespaceCollection;
end;

class function CoCodeNamespaceCollection.CreateRemote(const MachineName: string): _CodeNamespaceCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeNamespaceCollection) as _CodeNamespaceCollection;
end;

class function CoCodeTypeReferenceCollection.Create: _CodeTypeReferenceCollection;
begin
	Result := CreateComObject(CLASS_CodeTypeReferenceCollection) as _CodeTypeReferenceCollection;
end;

class function CoCodeTypeReferenceCollection.CreateRemote(const MachineName: string): _CodeTypeReferenceCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeReferenceCollection) as _CodeTypeReferenceCollection;
end;

class function CoCodeParameterDeclarationExpressionCollection.Create: _CodeParameterDeclarationExpressionCollection;
begin
	Result := CreateComObject(CLASS_CodeParameterDeclarationExpressionCollection) as _CodeParameterDeclarationExpressionCollection;
end;

class function CoCodeParameterDeclarationExpressionCollection.CreateRemote(const MachineName: string): _CodeParameterDeclarationExpressionCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeParameterDeclarationExpressionCollection) as _CodeParameterDeclarationExpressionCollection;
end;

class function CoCodeTypeParameterCollection.Create: _CodeTypeParameterCollection;
begin
	Result := CreateComObject(CLASS_CodeTypeParameterCollection) as _CodeTypeParameterCollection;
end;

class function CoCodeTypeParameterCollection.CreateRemote(const MachineName: string): _CodeTypeParameterCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeParameterCollection) as _CodeTypeParameterCollection;
end;

class function CoCodeTypeDeclarationCollection.Create: _CodeTypeDeclarationCollection;
begin
	Result := CreateComObject(CLASS_CodeTypeDeclarationCollection) as _CodeTypeDeclarationCollection;
end;

class function CoCodeTypeDeclarationCollection.CreateRemote(const MachineName: string): _CodeTypeDeclarationCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeDeclarationCollection) as _CodeTypeDeclarationCollection;
end;

class function CoCodeNamespaceImportCollection.Create: _CodeNamespaceImportCollection;
begin
	Result := CreateComObject(CLASS_CodeNamespaceImportCollection) as _CodeNamespaceImportCollection;
end;

class function CoCodeNamespaceImportCollection.CreateRemote(const MachineName: string): _CodeNamespaceImportCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeNamespaceImportCollection) as _CodeNamespaceImportCollection;
end;

class function CoCodeRegionDirective.Create: _CodeRegionDirective;
begin
	Result := CreateComObject(CLASS_CodeRegionDirective) as _CodeRegionDirective;
end;

class function CoCodeRegionDirective.CreateRemote(const MachineName: string): _CodeRegionDirective;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeRegionDirective) as _CodeRegionDirective;
end;

class function CoCodeSnippetCompileUnit.Create: _CodeSnippetCompileUnit;
begin
	Result := CreateComObject(CLASS_CodeSnippetCompileUnit) as _CodeSnippetCompileUnit;
end;

class function CoCodeSnippetCompileUnit.CreateRemote(const MachineName: string): _CodeSnippetCompileUnit;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeSnippetCompileUnit) as _CodeSnippetCompileUnit;
end;

class function CoCodeTypeMemberCollection.Create: _CodeTypeMemberCollection;
begin
	Result := CreateComObject(CLASS_CodeTypeMemberCollection) as _CodeTypeMemberCollection;
end;

class function CoCodeTypeMemberCollection.CreateRemote(const MachineName: string): _CodeTypeMemberCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeMemberCollection) as _CodeTypeMemberCollection;
end;

class function CoCodeTypeDelegate.Create: _CodeTypeDelegate;
begin
	Result := CreateComObject(CLASS_CodeTypeDelegate) as _CodeTypeDelegate;
end;

class function CoCodeTypeDelegate.CreateRemote(const MachineName: string): _CodeTypeDelegate;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeDelegate) as _CodeTypeDelegate;
end;

class function CoCodeTypeParameter.Create: _CodeTypeParameter;
begin
	Result := CreateComObject(CLASS_CodeTypeParameter) as _CodeTypeParameter;
end;

class function CoCodeTypeParameter.CreateRemote(const MachineName: string): _CodeTypeParameter;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeParameter) as _CodeTypeParameter;
end;

class function CoCodeTypeReferenceExpression.Create: _CodeTypeReferenceExpression;
begin
	Result := CreateComObject(CLASS_CodeTypeReferenceExpression) as _CodeTypeReferenceExpression;
end;

class function CoCodeTypeReferenceExpression.CreateRemote(const MachineName: string): _CodeTypeReferenceExpression;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CodeTypeReferenceExpression) as _CodeTypeReferenceExpression;
end;

class function Cocomponent.Create: _Component;
begin
	Result := CreateComObject(CLASS_component) as _Component;
end;

class function Cocomponent.CreateRemote(const MachineName: string): _Component;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_component) as _Component;
end;

class function CoAttributeCollection.Create: _AttributeCollection;
begin
	Result := CreateComObject(CLASS_AttributeCollection) as _AttributeCollection;
end;

class function CoAttributeCollection.CreateRemote(const MachineName: string): _AttributeCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_AttributeCollection) as _AttributeCollection;
end;

class function CoPropertyDescriptor.Create: _PropertyDescriptor;
begin
	Result := CreateComObject(CLASS_PropertyDescriptor) as _PropertyDescriptor;
end;

class function CoPropertyDescriptor.CreateRemote(const MachineName: string): _PropertyDescriptor;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_PropertyDescriptor) as _PropertyDescriptor;
end;

class function CoComponentCollection.Create: _ComponentCollection;
begin
	Result := CreateComObject(CLASS_ComponentCollection) as _ComponentCollection;
end;

class function CoComponentCollection.CreateRemote(const MachineName: string): _ComponentCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentCollection) as _ComponentCollection;
end;

class function CoEventDescriptor.Create: _EventDescriptor;
begin
	Result := CreateComObject(CLASS_EventDescriptor) as _EventDescriptor;
end;

class function CoEventDescriptor.CreateRemote(const MachineName: string): _EventDescriptor;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_EventDescriptor) as _EventDescriptor;
end;

class function CoEventDescriptorCollection.Create: _EventDescriptorCollection;
begin
	Result := CreateComObject(CLASS_EventDescriptorCollection) as _EventDescriptorCollection;
end;

class function CoEventDescriptorCollection.CreateRemote(const MachineName: string): _EventDescriptorCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_EventDescriptorCollection) as _EventDescriptorCollection;
end;

class function CoMemberDescriptor.Create: _MemberDescriptor;
begin
	Result := CreateComObject(CLASS_MemberDescriptor) as _MemberDescriptor;
end;

class function CoMemberDescriptor.CreateRemote(const MachineName: string): _MemberDescriptor;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_MemberDescriptor) as _MemberDescriptor;
end;

class function CoMarshalByValueComponent.Create: _MarshalByValueComponent;
begin
	Result := CreateComObject(CLASS_MarshalByValueComponent) as _MarshalByValueComponent;
end;

class function CoMarshalByValueComponent.CreateRemote(const MachineName: string): _MarshalByValueComponent;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_MarshalByValueComponent) as _MarshalByValueComponent;
end;

class function CoCommandID.Create: _CommandID;
begin
	Result := CreateComObject(CLASS_CommandID) as _CommandID;
end;

class function CoCommandID.CreateRemote(const MachineName: string): _CommandID;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CommandID) as _CommandID;
end;

class function CoComponentChangedEventArgs.Create: _ComponentChangedEventArgs;
begin
	Result := CreateComObject(CLASS_ComponentChangedEventArgs) as _ComponentChangedEventArgs;
end;

class function CoComponentChangedEventArgs.CreateRemote(const MachineName: string): _ComponentChangedEventArgs;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentChangedEventArgs) as _ComponentChangedEventArgs;
end;

class function CoComponentChangedEventHandler.Create: _ComponentChangedEventHandler;
begin
	Result := CreateComObject(CLASS_ComponentChangedEventHandler) as _ComponentChangedEventHandler;
end;

class function CoComponentChangedEventHandler.CreateRemote(const MachineName: string): _ComponentChangedEventHandler;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentChangedEventHandler) as _ComponentChangedEventHandler;
end;

class function CoComponentChangingEventArgs.Create: _ComponentChangingEventArgs;
begin
	Result := CreateComObject(CLASS_ComponentChangingEventArgs) as _ComponentChangingEventArgs;
end;

class function CoComponentChangingEventArgs.CreateRemote(const MachineName: string): _ComponentChangingEventArgs;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentChangingEventArgs) as _ComponentChangingEventArgs;
end;

class function CoComponentChangingEventHandler.Create: _ComponentChangingEventHandler;
begin
	Result := CreateComObject(CLASS_ComponentChangingEventHandler) as _ComponentChangingEventHandler;
end;

class function CoComponentChangingEventHandler.CreateRemote(const MachineName: string): _ComponentChangingEventHandler;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentChangingEventHandler) as _ComponentChangingEventHandler;
end;

class function CoComponentEventArgs.Create: _ComponentEventArgs;
begin
	Result := CreateComObject(CLASS_ComponentEventArgs) as _ComponentEventArgs;
end;

class function CoComponentEventArgs.CreateRemote(const MachineName: string): _ComponentEventArgs;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentEventArgs) as _ComponentEventArgs;
end;

class function CoComponentEventHandler.Create: _ComponentEventHandler;
begin
	Result := CreateComObject(CLASS_ComponentEventHandler) as _ComponentEventHandler;
end;

class function CoComponentEventHandler.CreateRemote(const MachineName: string): _ComponentEventHandler;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentEventHandler) as _ComponentEventHandler;
end;

class function CoComponentRenameEventArgs.Create: _ComponentRenameEventArgs;
begin
	Result := CreateComObject(CLASS_ComponentRenameEventArgs) as _ComponentRenameEventArgs;
end;

class function CoComponentRenameEventArgs.CreateRemote(const MachineName: string): _ComponentRenameEventArgs;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentRenameEventArgs) as _ComponentRenameEventArgs;
end;

class function CoComponentRenameEventHandler.Create: _ComponentRenameEventHandler;
begin
	Result := CreateComObject(CLASS_ComponentRenameEventHandler) as _ComponentRenameEventHandler;
end;

class function CoComponentRenameEventHandler.CreateRemote(const MachineName: string): _ComponentRenameEventHandler;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ComponentRenameEventHandler) as _ComponentRenameEventHandler;
end;

class function CoDesignerTransactionCloseEventArgs.Create: _DesignerTransactionCloseEventArgs;
begin
	Result := CreateComObject(CLASS_DesignerTransactionCloseEventArgs) as _DesignerTransactionCloseEventArgs;
end;

class function CoDesignerTransactionCloseEventArgs.CreateRemote(const MachineName: string): _DesignerTransactionCloseEventArgs;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_DesignerTransactionCloseEventArgs) as _DesignerTransactionCloseEventArgs;
end;

class function CoDesignerTransactionCloseEventHandler.Create: _DesignerTransactionCloseEventHandler;
begin
	Result := CreateComObject(CLASS_DesignerTransactionCloseEventHandler) as _DesignerTransactionCloseEventHandler;
end;

class function CoDesignerTransactionCloseEventHandler.CreateRemote(const MachineName: string): _DesignerTransactionCloseEventHandler;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_DesignerTransactionCloseEventHandler) as _DesignerTransactionCloseEventHandler;
end;

class function CoDesignerVerb.Create: _DesignerVerb;
begin
	Result := CreateComObject(CLASS_DesignerVerb) as _DesignerVerb;
end;

class function CoDesignerVerb.CreateRemote(const MachineName: string): _DesignerVerb;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_DesignerVerb) as _DesignerVerb;
end;

class function CoMenuCommand.Create: _MenuCommand;
begin
	Result := CreateComObject(CLASS_MenuCommand) as _MenuCommand;
end;

class function CoMenuCommand.CreateRemote(const MachineName: string): _MenuCommand;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_MenuCommand) as _MenuCommand;
end;

class function CoDesignerVerbCollection.Create: _DesignerVerbCollection;
begin
	Result := CreateComObject(CLASS_DesignerVerbCollection) as _DesignerVerbCollection;
end;

class function CoDesignerVerbCollection.CreateRemote(const MachineName: string): _DesignerVerbCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_DesignerVerbCollection) as _DesignerVerbCollection;
end;

class function CoServiceCreatorCallback.Create: _ServiceCreatorCallback;
begin
	Result := CreateComObject(CLASS_ServiceCreatorCallback) as _ServiceCreatorCallback;
end;

class function CoServiceCreatorCallback.CreateRemote(const MachineName: string): _ServiceCreatorCallback;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ServiceCreatorCallback) as _ServiceCreatorCallback;
end;

class function CoDesignerLoader.Create: _DesignerLoader;
begin
	Result := CreateComObject(CLASS_DesignerLoader) as _DesignerLoader;
end;

class function CoDesignerLoader.CreateRemote(const MachineName: string): _DesignerLoader;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_DesignerLoader) as _DesignerLoader;
end;

class function CoPerformanceCounterManager.Create: _PerformanceCounterManager;
begin
	Result := CreateComObject(CLASS_PerformanceCounterManager) as _PerformanceCounterManager;
end;

class function CoPerformanceCounterManager.CreateRemote(const MachineName: string): _PerformanceCounterManager;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_PerformanceCounterManager) as _PerformanceCounterManager;
end;

class function CoWebHeaderCollection.Create: _WebHeaderCollection;
begin
	Result := CreateComObject(CLASS_WebHeaderCollection) as _WebHeaderCollection;
end;

class function CoWebHeaderCollection.CreateRemote(const MachineName: string): _WebHeaderCollection;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_WebHeaderCollection) as _WebHeaderCollection;
end;

class function CoWebClient.Create: _WebClient;
begin
	Result := CreateComObject(CLASS_WebClient) as _WebClient;
end;

class function CoWebClient.CreateRemote(const MachineName: string): _WebClient;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_WebClient) as _WebClient;
end;

class function CoStandardOleMarshalObject.Create: _StandardOleMarshalObject;
begin
	Result := CreateComObject(CLASS_StandardOleMarshalObject) as _StandardOleMarshalObject;
end;

class function CoStandardOleMarshalObject.CreateRemote(const MachineName: string): _StandardOleMarshalObject;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_StandardOleMarshalObject) as _StandardOleMarshalObject;
end;

end.
