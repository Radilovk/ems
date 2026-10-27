.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;
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
    name = "StartScan"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 2309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2310
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2311
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startScan()V

    .line 2316
    return-void
.end method
