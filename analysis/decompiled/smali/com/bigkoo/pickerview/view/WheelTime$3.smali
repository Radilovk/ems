.class Lcom/bigkoo/pickerview/view/WheelTime$3;
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
    .line 398
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v1, p1, v0

    .line 402
    .local v1, "year_num":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$502(Lcom/bigkoo/pickerview/view/WheelTime;I)I

    .line 403
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v13

    .line 405
    .local v13, "currentMonthItem":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 407
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 409
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v13, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    .line 411
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v2, v13, v0

    .line 416
    .local v2, "monthNum":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 418
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 469
    .end local v2    # "monthNum":I
    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 472
    :cond_1
    return-void

    .line 419
    .restart local v2    # "monthNum":I
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v3

    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v3, 0x1

    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 427
    .end local v2    # "monthNum":I
    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v1, v0, :cond_8

    .line 429
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 431
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v13, v0, :cond_6

    .line 432
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    .line 433
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 436
    :cond_6
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v5, v13, v0

    .line 437
    .local v5, "month":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v5, v0, :cond_7

    .line 439
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v6

    const/16 v7, 0x1f

    iget-object v8, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v4, v1

    invoke-static/range {v3 .. v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 442
    :cond_7
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v6, 0x1

    const/16 v7, 0x1f

    iget-object v8, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v9, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v4, v1

    invoke-static/range {v3 .. v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 445
    .end local v5    # "month":I
    :cond_8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v1, v0, :cond_b

    .line 447
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v6}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 448
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v13, v0, :cond_9

    .line 449
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    .line 450
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 452
    :cond_9
    add-int/lit8 v2, v13, 0x1

    .line 454
    .restart local v2    # "monthNum":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 456
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    iget-object v11, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v12, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v7, v1

    move v8, v2

    invoke-static/range {v6 .. v12}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 459
    :cond_a
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v9, 0x1

    const/16 v10, 0x1f

    iget-object v11, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v12, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v7, v1

    move v8, v2

    invoke-static/range {v6 .. v12}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 464
    .end local v2    # "monthNum":I
    :cond_b
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v3, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/4 v4, 0x1

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 466
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    const/4 v9, 0x1

    const/16 v10, 0x1f

    iget-object v11, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v12, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v7, v1

    invoke-static/range {v6 .. v12}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method
