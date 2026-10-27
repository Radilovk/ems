.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModToggle"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1111
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modToggle(Z)V

    .line 1116
    return-void
.end method
