.class public final Lorg/apache/poi/hssf/record/UseSelFSRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "UseSelFSRecord.java"


# static fields
.field public static final sid:S = 0x160s

.field private static final useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(I)V

    .line 49
    sget-object v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 75
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(I)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 70
    const/16 v0, 0x160

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 62
    iget v0, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[USESELFS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "    .options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "[/USESELFS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
