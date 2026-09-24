.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransportPick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    .line 333
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->root:Landroid/view/View;

    .line 334
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 4

    .prologue
    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandTransport(Landroid/content/Context;I)V

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$900(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 344
    :goto_c
    return-void

    .line 341
    :catch_d
    move-exception v0

    .line 342
    const-string v1, "WearableSettingsSection.transport"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
