.class Lcom/bigkoo/pickerview/view/WheelOptions$2;
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

    .line 124
    .local p0, "this":Lcom/bigkoo/pickerview/view/WheelOptions$2;, "Lcom/bigkoo/pickerview/view/WheelOptions$2;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .line 128
    .local p0, "this":Lcom/bigkoo/pickerview/view/WheelOptions$2;, "Lcom/bigkoo/pickerview/view/WheelOptions$2;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 130
    .local v0, "opt1Select":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 131
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    move p1, v1

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "opt3":I
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 137
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    :goto_2
    move v1, v2

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 140
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 143
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    .line 146
    .end local v0    # "opt1Select":I
    .end local v1    # "opt3":I
    :cond_4
    goto :goto_3

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    .line 151
    :cond_6
    :goto_3
    return-void
.end method
