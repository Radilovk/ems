.class Lcom/bigkoo/pickerview/view/WheelOptions$1;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelOptions;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 95
    .local p0, "this":Lcom/bigkoo/pickerview/view/WheelOptions$1;, "Lcom/bigkoo/pickerview/view/WheelOptions$1;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .line 99
    .local p0, "this":Lcom/bigkoo/pickerview/view/WheelOptions$1;, "Lcom/bigkoo/pickerview/view/WheelOptions$1;"
    const/4 v0, 0x0

    .line 100
    .local v0, "opt2Select":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v1

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v3

    invoke-interface {v1, v3, v2, v2}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    goto/16 :goto_1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v0, v1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 111
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 113
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$600(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/listener/OnItemSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/contrarywind/listener/OnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, v2}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    .line 121
    :cond_4
    :goto_1
    return-void
.end method
