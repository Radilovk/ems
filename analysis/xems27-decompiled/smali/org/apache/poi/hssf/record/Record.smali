.class public abstract Lorg/apache/poi/hssf/record/Record;
.super Lorg/apache/poi/hssf/record/RecordBase;
.source "Record.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordBase;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to define a clone method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;
    .locals 6

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->serialize()[B

    move-result-object v0

    .line 89
    .local v0, "b":[B
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v1, "rinp":Lorg/apache/poi/hssf/record/RecordInputStream;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 92
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 93
    .local v2, "r":[Lorg/apache/poi/hssf/record/Record;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 96
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3

    .line 94
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-serialised a record to clone it, but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " records back!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract getSid()S
.end method

.method public final serialize()[B
    .locals 2

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v0

    new-array v0, v0, [B

    .line 45
    .local v0, "retval":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
