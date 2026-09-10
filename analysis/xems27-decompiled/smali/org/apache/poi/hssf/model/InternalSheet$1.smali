.class final Lorg/apache/poi/hssf/model/InternalSheet$1;
.super Ljava/lang/Object;
.source "InternalSheet.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/model/InternalSheet;->spillAggregate(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$recs:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet$1;->val$recs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 369
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet$1;->val$recs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method
