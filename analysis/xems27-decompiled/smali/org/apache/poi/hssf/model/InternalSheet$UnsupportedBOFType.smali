.class public Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
.super Lorg/apache/poi/hssf/record/RecordFormatException;
.source "InternalSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/InternalSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedBOFType"
.end annotation


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOF not of a supported type, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 377
    iput p1, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    .line 378
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 381
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    return v0
.end method
