.class Lcom/bigkoo/pickerview/view/WheelTime$2;
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

    .line 191
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .line 194
    move v0, p1

    .line 195
    .local v0, "month_num":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$400(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v2

    add-int/2addr v1, v2

    .line 196
    .local v1, "year_num":I
    const/16 v2, 0x1d

    .line 197
    .local v2, "maxItem":I
    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    .line 199
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v5

    invoke-static {v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 200
    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v2

    goto :goto_0

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {v1, v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v5

    invoke-static {v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 203
    invoke-static {v1, v0}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v2

    goto :goto_0

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    new-instance v4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v5

    invoke-static {v5}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 207
    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v3}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v2

    .line 210
    :goto_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-le v3, v4, :cond_2

    .line 211
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 214
    :cond_2
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelTime$2;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    .line 217
    :cond_3
    return-void
.end method
