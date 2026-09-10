.class public Lorg/apache/poi/ddf/EscherTertiaryOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "EscherTertiaryOptRecord.java"


# static fields
.field public static final RECORD_ID:S = -0xedes


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "TertiaryOpt"

    return-object v0
.end method
