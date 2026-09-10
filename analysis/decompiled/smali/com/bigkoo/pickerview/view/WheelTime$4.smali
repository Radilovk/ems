.class Lcom/bigkoo/pickerview/view/WheelTime$4;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelTime;->setSolar(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelTime;

.field final synthetic val$list_big:Ljava/util/List;

.field final synthetic val$list_little:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x1f

    const/4 v3, 0x1

    .line 480
    add-int/lit8 v2, p1, 0x1

    .line 482
    .local v2, "month_num":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 483
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    .line 484
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 522
    :cond_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 490
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 492
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 497
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    .line 498
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 507
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_7

    .line 509
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v8

    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v10, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 511
    :cond_7
    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v6

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    iget-object v10, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v11, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v8, v3

    move v9, v4

    invoke-static/range {v5 .. v11}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 516
    :cond_8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method
