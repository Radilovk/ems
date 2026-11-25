.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VrHitRun"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_c

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxDown(I)V

    .line 111
    :cond_c
    return-void
.end method
