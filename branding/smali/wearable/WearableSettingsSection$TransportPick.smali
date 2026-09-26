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

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    .line 499
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->root:Landroid/view/View;

    .line 500
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandTransport(Landroid/content/Context;I)V

    .line 506
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$1100(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 509
    goto :goto_13

    .line 507
    :catchall_d
    move-exception p1

    .line 508
    const-string v0, "WearableSettingsSection.transport"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    :goto_13
    return-void
.end method
