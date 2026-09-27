.class final Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Runnable0"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->invalidate()V

    .line 504
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 505
    return-void
.end method
