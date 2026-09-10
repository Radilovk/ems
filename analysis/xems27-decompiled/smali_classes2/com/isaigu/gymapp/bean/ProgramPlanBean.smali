.class public Lcom/isaigu/gymapp/bean/ProgramPlanBean;
.super Ljava/lang/Object;
.source "ProgramPlanBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;
    }
.end annotation


# instance fields
.field public dateFullString:Ljava/lang/String;

.field public day:I

.field public planList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "day"    # I
    .param p2, "dayFullString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    .line 22
    iput p1, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->day:I

    .line 23
    iput-object p3, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public removePlan(Ljava/lang/String;)Z
    .locals 3
    .param p1, "time"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 29
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean$ProgramPlan;->time:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->planList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    return v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
