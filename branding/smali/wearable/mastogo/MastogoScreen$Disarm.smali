.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;
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
    name = "Disarm"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1152
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-eqz v0, :cond_10

    .line 1157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    .line 1158
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1160
    :cond_10
    return-void
.end method
