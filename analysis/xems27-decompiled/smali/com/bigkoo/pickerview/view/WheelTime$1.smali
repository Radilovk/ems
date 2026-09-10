.class Lcom/bigkoo/pickerview/view/WheelTime$1;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelTime;->setLunar(IIIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelTime;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelTime;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 154
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int/2addr v0, p1

    .line 159
    .local v0, "year_num":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getMonths(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 160
    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 166
    :goto_0
    const/16 v1, 0x1d

    .line 167
    .local v1, "maxItem":I
    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 168
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_1

    .line 169
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v4

    invoke-static {v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 170
    invoke-static {v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    invoke-static {v0, v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v4

    invoke-static {v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 173
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v1

    goto :goto_1

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v4

    invoke-static {v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 177
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v1

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-le v2, v3, :cond_3

    .line 181
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$1;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 187
    :cond_4
    return-void
.end method
