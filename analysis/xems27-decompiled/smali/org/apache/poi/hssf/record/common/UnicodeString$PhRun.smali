.class public Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
.super Ljava/lang/Object;
.source "UnicodeString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/common/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhRun"
.end annotation


# instance fields
.field private phoneticTextFirstCharacterOffset:I

.field private realTextFirstCharacterOffset:I

.field private realTextLength:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "phoneticTextFirstCharacterOffset"    # I
    .param p2, "realTextFirstCharacterOffset"    # I
    .param p3, "realTextLength"    # I

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->phoneticTextFirstCharacterOffset:I

    .line 333
    iput p2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextFirstCharacterOffset:I

    .line 334
    iput p3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextLength:I

    .line 335
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->phoneticTextFirstCharacterOffset:I

    .line 338
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextFirstCharacterOffset:I

    .line 339
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextLength:I

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/common/UnicodeString$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "x1"    # Lorg/apache/poi/hssf/record/common/UnicodeString$1;

    .line 325
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .param p1, "x1"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 325
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 325
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->phoneticTextFirstCharacterOffset:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 325
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextFirstCharacterOffset:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    .line 325
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextLength:I

    return v0
.end method

.method private serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 342
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 343
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->phoneticTextFirstCharacterOffset:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 344
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextFirstCharacterOffset:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 345
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->realTextLength:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 346
    return-void
.end method
