.class public final Lorg/apache/poi/hssf/record/InterfaceEndRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "InterfaceEndRecord.java"


# static fields
.field public static final instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

.field public static final sid:S = 0xe2s


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/InterfaceEndRecord;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 39
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    new-instance v0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    sget-object v0, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    return-object v0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 61
    const/16 v0, 0xe2

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "[INTERFACEEND/]\n"

    return-object v0
.end method
