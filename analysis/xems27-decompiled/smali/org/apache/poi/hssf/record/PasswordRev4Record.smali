.class public final Lorg/apache/poi/hssf/record/PasswordRev4Record;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PasswordRev4Record.java"


# static fields
.field public static final sid:S = 0x1bcs


# instance fields
.field private field_1_password:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pw"    # I

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 34
    iput p1, p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;->field_1_password:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;->field_1_password:I

    .line 39
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 68
    const/16 v0, 0x1bc

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 60
    iget v0, p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;->field_1_password:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 61
    return-void
.end method

.method public setPassword(S)V
    .locals 0
    .param p1, "pw"    # S

    .line 47
    iput p1, p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;->field_1_password:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PROT4REVPASSWORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "    .password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;->field_1_password:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "[/PROT4REVPASSWORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
