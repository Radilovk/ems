.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Probe"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1151
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probe()V

    .line 1156
    return-void
.end method
