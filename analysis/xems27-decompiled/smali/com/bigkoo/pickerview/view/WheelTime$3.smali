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

    .line 398
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 10
    .param p1, "index"    # I

    .line 401
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int/2addr v0, p1

    .line 402
    .local v0, "year_num":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1, v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$502(Lcom/bigkoo/pickerview/view/WheelTime;I)I

    .line 403
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v8

    .line 405
    .local v8, "currentMonthItem":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 407
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 409
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v8, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 411
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    add-int v9, v8, v1

    .line 416
    .local v9, "monthNum":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 418
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v9, v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v9, v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 427
    .end local v9    # "monthNum":I
    :goto_0
    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v0, v1, :cond_7

    .line 429
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    invoke-direct {v4, v5, v2}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 431
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v8, v1, :cond_5

    .line 432
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 433
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    add-int v9, v8, v1

    .line 437
    .local v9, "month":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v9, v1, :cond_6

    .line 439
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 442
    :cond_6
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 445
    .end local v9    # "month":I
    :goto_1
    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 447
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 448
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v8, v1, :cond_8

    .line 449
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 450
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 452
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .line 454
    .local v9, "monthNum":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v9, v1, :cond_9

    .line 456
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 459
    :cond_9
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    move v3, v9

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 462
    .end local v9    # "monthNum":I
    :goto_2
    goto :goto_3

    .line 464
    :cond_a
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v4, v3, v2}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 466
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v3, v2

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    move v2, v0

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 469
    :goto_3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 470
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 472
    :cond_b
    return-void
.end method
