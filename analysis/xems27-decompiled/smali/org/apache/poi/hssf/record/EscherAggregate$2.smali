.class Lorg/apache/poi/hssf/record/EscherAggregate$2;
.super Ljava/lang/Object;
.source "EscherAggregate.java"

# interfaces
.implements Lorg/apache/poi/ddf/EscherSerializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/record/EscherAggregate;->serialize(I[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hssf/record/EscherAggregate;

.field final synthetic val$shapes:Ljava/util/List;

.field final synthetic val$spEndingOffsets:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/record/EscherAggregate;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EscherAggregate$2;->this$0:Lorg/apache/poi/hssf/record/EscherAggregate;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/EscherAggregate$2;->val$spEndingOffsets:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/poi/hssf/record/EscherAggregate$2;->val$shapes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "recordId"    # S
    .param p3, "size"    # I
    .param p4, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 480
    const/16 v0, -0xfef

    if-eq p2, v0, :cond_0

    const/16 v0, -0xff3

    if-ne p2, v0, :cond_1

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$2;->val$spEndingOffsets:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$2;->val$shapes:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_1
    return-void
.end method

.method public beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "recordId"    # S
    .param p3, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 477
    return-void
.end method
