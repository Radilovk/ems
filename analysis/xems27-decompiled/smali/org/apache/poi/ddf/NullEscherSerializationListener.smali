.class public Lorg/apache/poi/ddf/NullEscherSerializationListener;
.super Ljava/lang/Object;
.source "NullEscherSerializationListener.java"

# interfaces
.implements Lorg/apache/poi/ddf/EscherSerializationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "recordId"    # S
    .param p3, "size"    # I
    .param p4, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 32
    return-void
.end method

.method public beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "recordId"    # S
    .param p3, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 28
    return-void
.end method
