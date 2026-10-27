.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;
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
    name = "CloseLink"
.end annotation


# instance fields
.field final l:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V
    .registers 2

    .prologue
    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2161
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;->l:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 2162
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;->l:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->close()V

    .line 2167
    return-void
.end method
