.class public final Lorg/apache/poi/hssf/record/DSFRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DSFRecord.java"


# static fields
.field private static final biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x161s


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isBiff5BookStreamPresent"    # Z

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(I)V

    .line 44
    sget-object v1, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    .line 45
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 73
    const/16 v0, 0x161

    return v0
.end method

.method public isBiff5BookStreamPresent()Z
    .locals 2

    .line 52
    sget-object v0, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    iget v0, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DSF]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "    .options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "[/DSF]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
