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

    .line 477
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 16
    .param p1, "index"    # I

    .line 480
    move-object/from16 v0, p0

    add-int/lit8 v8, p1, 0x1

    .line 482
    .local v8, "month_num":I
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 483
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v8, v1, -0x1

    .line 484
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 486
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v12

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v13

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 487
    :cond_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 490
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v12

    const/16 v13, 0x1f

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 491
    :cond_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 492
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    const/4 v12, 0x1

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v13

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 494
    :cond_2
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1f

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 496
    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 497
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v8, v1, -0x1

    .line 498
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v8, v1, :cond_4

    .line 500
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v12

    const/16 v13, 0x1f

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 503
    :cond_4
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1f

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v11, v8

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 506
    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 507
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    if-ne v8, v1, :cond_6

    .line 509
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v9}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v10

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    const/4 v12, 0x1

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v13

    iget-object v14, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v15, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v9 .. v15}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 511
    :cond_6
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    iget-object v3, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 516
    :cond_7
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_big:Ljava/util/List;

    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->val$list_little:Ljava/util/List;

    move v3, v8

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 519
    :goto_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 520
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime$4;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 522
    :cond_8
    return-void
.end method
