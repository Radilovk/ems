.class final Lorg/apache/poi/hssf/record/EscherAggregate$1;
.super Lorg/apache/poi/ddf/DefaultEscherRecordFactory;
.source "EscherAggregate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/record/EscherAggregate;->createAggregate(Ljava/util/List;I)Lorg/apache/poi/hssf/record/EscherAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$shapeRecords:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EscherAggregate$1;->val$shapeRecords:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 383
    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    .line 384
    .local v0, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    const/16 v2, -0xfef

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    const/16 v2, -0xff3

    if-ne v1, v2, :cond_1

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EscherAggregate$1;->val$shapeRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    return-object v0
.end method
