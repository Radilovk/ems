.class Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;
.super Ljava/lang/Object;
.source "PageSettingsBlock.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->positionRecords(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field final synthetic val$cv:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

.field final synthetic val$hfGuidMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->this$0:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->val$hfGuidMap:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->val$cv:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 671
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    const/16 v1, 0x1aa

    if-ne v0, v1, :cond_0

    .line 672
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/UserSViewBegin;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->getGuid()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "guid":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->val$hfGuidMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 675
    .local v1, "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    if-eqz v1, :cond_0

    .line 676
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->val$cv:Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->append(Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 677
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;->this$0:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->access$000(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 680
    .end local v0    # "guid":Ljava/lang/String;
    .end local v1    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    :cond_0
    return-void
.end method
