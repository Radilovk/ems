.class public Lorg/apache/poi/hssf/usermodel/HSSFCombobox;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "HSSFCombobox.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 34
    const/16 v0, 0xc9

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 36
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 5

    .line 79
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 80
    .local v0, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 81
    .local v1, "c":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 84
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 85
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    .line 86
    new-instance v2, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>()V

    .line 87
    .local v2, "f":Lorg/apache/poi/hssf/record/FtCblsSubRecord;
    invoke-static {}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object v3

    .line 88
    .local v3, "l":Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    new-instance v4, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 89
    .local v4, "e":Lorg/apache/poi/hssf/record/EndSubRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 90
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 91
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 92
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 93
    return-object v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 7

    .line 46
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 47
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    .line 48
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 49
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 51
    .local v3, "clientData":Lorg/apache/poi/ddf/EscherClientDataRecord;
    const/16 v4, -0xffc

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 52
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 53
    const/16 v4, -0xff6

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setRecordId(S)V

    .line 54
    const/16 v4, 0xc92

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setOptions(S)V

    .line 56
    const/16 v4, 0xa00

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 57
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 58
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x7f

    const v6, 0x1040104

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 59
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0xbf

    const v6, 0x80008

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 60
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v5, 0x1ff

    const/high16 v6, 0x80000

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 61
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v5, 0x3bf

    const/high16 v6, 0x20000

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 64
    .local v4, "userAnchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setAnchorType(I)V

    .line 65
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v5

    .line 66
    .local v5, "anchor":Lorg/apache/poi/ddf/EscherRecord;
    const/16 v6, -0xfef

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setRecordId(S)V

    .line 67
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/apache/poi/ddf/EscherClientDataRecord;->setOptions(S)V

    .line 69
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 70
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 71
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 72
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 74
    return-object v0
.end method

.method protected createTextObjRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "shapeType"    # I

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shape type can not be changed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
