.class final Lcom/isaigu/gymapp/ai/VoiceSettings$Show;
.super Ljava/lang/Object;
.source "VoiceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Show"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Show;->a:Landroid/app/Activity;

    .line 228
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 232
    # getter for: Lcom/isaigu/gymapp/ai/VoiceSettings;->usageView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceSettings;->access$000()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 233
    # getter for: Lcom/isaigu/gymapp/ai/VoiceSettings;->usageView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceSettings;->access$000()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Show;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/VoiceSettings;->usageText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_13
    return-void
.end method
