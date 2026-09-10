.class public Lorg/apache/poi/hssf/model/ComboboxShape;
.super Lorg/apache/poi/hssf/model/AbstractShape;
.source "ComboboxShape.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

.field private spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)V
    .locals 1
    .param p1, "hssfShape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/AbstractShape;-><init>()V

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/ComboboxShape;->createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/ComboboxShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/ComboboxShape;->createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/ComboboxShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    .line 43
    return-void
.end method

.method private createObjRecord(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 5
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .line 49
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 50
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 51
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/ComboboxShape;->getCmoObjectId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 55
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 56
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 58
    new-instance v2, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>()V

    .line 60
    .local v2, "f":Lorg/apache/poi/hssf/record/FtCblsSubRecord;
    invoke-static {}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object v3

    .line 62
    .local v3, "l":Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    new-instance v4, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 64
    .local v4, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 65
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 66
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 67
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 69
    return-object v0
.end method

.method private createSpContainer(Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;I)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 7
    .param p1, "shape"    # Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .param p2, "shapeId"    # I

    .line 76
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 77
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 78
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 79
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 81
    .local v3, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v4, -0xffc

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 82
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 83
    const/16 v4, -0xff6

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 84
    const/16 v4, 0xc92

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 86
    invoke-virtual {v1, p2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .line 87
    const/16 v4, 0xa00

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 88
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 89
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x7f

    const v6, 0x1040104

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 90
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0xbf

    const v6, 0x80008

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 91
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x1ff

    const/high16 v6, 0x80000

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 92
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x3bf

    const/high16 v6, 0x20000

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 95
    .local v4, "userAnchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setAnchorType(I)V

    .line 96
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/ComboboxShape;->createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v5

    .line 97
    .local v5, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v6, -0xfef

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 100
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 101
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 102
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 103
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/model/ComboboxShape;->objRecord:Lorg/apache/poi/hssf/record/ObjRecord;

    return-object v0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/poi/hssf/model/ComboboxShape;->spContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object v0
.end method
