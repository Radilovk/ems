.class public Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
.super Ljava/lang/Object;
.source "UnicodeString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/common/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final _character:S

.field _fontIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 68
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(SS)V

    .line 69
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "character"    # S
    .param p2, "fontIndex"    # S

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    .line 64
    iput-short p2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)I
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 89
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-ne v0, v1, :cond_1

    .line 93
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    sub-int/2addr v0, v1

    return v0

    .line 95
    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    return v1

    .line 83
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 85
    .local v0, "other":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    iget-short v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-ne v2, v3, :cond_1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    iget-short v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCharacterPos()S
    .locals 1

    .line 72
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    return v0
.end method

.method public getFontIndex()S
    .locals 1

    .line 76
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 100
    nop

    .line 101
    const/16 v0, 0x2a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 109
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 110
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "character="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fontIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
