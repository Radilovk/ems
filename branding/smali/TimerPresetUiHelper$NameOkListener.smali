.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameOkListener"
.end annotation


# instance fields
.field private final callback:Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;

.field private final input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V
    .registers 3

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;->input:Landroid/widget/EditText;

    .line 250
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;->callback:Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;

    .line 251
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;->callback:Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;

    if-eqz p1, :cond_20

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;->input:Landroid/widget/EditText;

    if-nez p2, :cond_9

    goto :goto_20

    .line 258
    :cond_9
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameOkListener;->input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1c

    :cond_1a
    const-string p2, ""

    :goto_1c
    invoke-interface {p1, p2}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;->onName(Ljava/lang/String;)V

    .line 259
    return-void

    .line 256
    :cond_20
    :goto_20
    return-void
.end method
