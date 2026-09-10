.class public Lorg/apache/poi/hssf/usermodel/HSSFPicture;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "HSSFPicture.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field public static final PICTURE_TYPE_DIB:I = 0x7

.field public static final PICTURE_TYPE_EMF:I = 0x2

.field public static final PICTURE_TYPE_JPEG:I = 0x5

.field public static final PICTURE_TYPE_PICT:I = 0x4

.field public static final PICTURE_TYPE_PNG:I = 0x6

.field public static final PICTURE_TYPE_WMF:I = 0x3

.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .param p2, "anchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 67
    const/16 v0, 0x4b

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 69
    .local v0, "cod":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    .line 70
    return-void
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 214
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 215
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 216
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 218
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 219
    return-void
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 4

    .line 246
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 247
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v1

    .line 248
    .local v1, "inSp":[B
    new-instance v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 249
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 250
    .local v2, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-object v3
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 3

    .line 88
    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 89
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 90
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v2, 0x1ce

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 91
    const/16 v2, 0x1ff

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->removeEscherProperty(I)V

    .line 92
    const/16 v2, -0xff3

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 93
    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 2

    .line 258
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    .line 259
    .local v0, "a":Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 225
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    .line 227
    .local v0, "propFile":Lorg/apache/poi/ddf/EscherComplexProperty;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 5

    .line 193
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 194
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 195
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v2

    .line 196
    .local v2, "data":[B
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipTypeWin32()B

    move-result v3

    .line 197
    .local v3, "type":I
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v3}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v4

    return-object v4
.end method

.method public getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    .locals 4

    .line 206
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 207
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 208
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v2

    .line 209
    .local v2, "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    return-object v3
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public getPictureIndex()I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 75
    .local v0, "property":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, -0x1

    return v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    return v1
.end method

.method public getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 2

    .line 160
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 1
    .param p1, "scale"    # D

    .line 171
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 1
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 183
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/ImageUtils;->setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;

    .line 184
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D

    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public resize()V
    .locals 2

    .line 106
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(D)V

    .line 107
    return-void
.end method

.method public resize(D)V
    .locals 0
    .param p1, "scale"    # D

    .line 115
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(DD)V

    .line 116
    return-void
.end method

.method public resize(DD)V
    .locals 6
    .param p1, "scaleX"    # D
    .param p3, "scaleY"    # D

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    .line 137
    .local v0, "anchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setAnchorType(I)V

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v1

    .line 141
    .local v1, "pref":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 142
    .local v2, "row2":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 144
    .local v3, "col2":I
    int-to-short v4, v3

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 146
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    .line 148
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 150
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    .line 151
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    .local v0, "bytes":[B
    new-instance v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    const/16 v2, 0x105

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SZ[B)V

    .line 236
    .local v1, "prop":Lorg/apache/poi/ddf/EscherComplexProperty;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 237
    return-void
.end method

.method public setPictureIndex(I)V
    .locals 4
    .param p1, "pictureIndex"    # I

    .line 83
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x104

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 84
    return-void
.end method

.method public setShapeType(I)V
    .locals 3
    .param p1, "shapeType"    # I

    .line 241
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
