.class public Lcom/isaigu/gymapp/mgr/ProgramDataBeans;
.super Ljava/lang/Object;
.source "ProgramDataBeans.java"


# instance fields
.field public beans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/mgr/ProgramDataBeans;->beans:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 1
    .param p1, "bean"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 20
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/ProgramDataBeans;->beans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
