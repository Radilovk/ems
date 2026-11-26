.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrSettingsOpen;
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
    name = "VrSettingsOpen"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrSettingsOpen;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 110
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrSettingsOpen;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->open(Landroid/app/Activity;)V

    .line 115
    return-void
.end method
