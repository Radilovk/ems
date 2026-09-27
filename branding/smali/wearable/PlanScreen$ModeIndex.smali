.class final Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModeIndex"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 2

    .prologue
    .line 146
    # setter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$202(I)I

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 148
    return-void
.end method
