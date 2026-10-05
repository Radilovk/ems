.class final Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;
.super Ljava/lang/Object;
.source "DeviceAlias.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/DeviceAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ask"
.end annotation


# instance fields
.field final mac:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final nameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->nameView:Landroid/widget/TextView;

    .line 75
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->mac:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->name:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->show()V

    .line 88
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->show()V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method show()V
    .registers 7

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->name:Ljava/lang/String;

    if-nez v0, :cond_83

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->mac:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/bodytech/DeviceAlias;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/DeviceAlias;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2e

    .line 99
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 102
    :cond_2e
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v1, "\u0418\u043c\u0435 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->mac:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u2014 \u043e\u0441\u0442\u0430\u0432\u0430 \u0441\u0430\u043c\u043e \u043d\u0430 \u0442\u043e\u0437\u0438 \u0442\u0430\u0431\u043b\u0435\u0442"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 107
    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438"

    new-instance v3, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;-><init>(Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v1, "\u041e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u043d\u043e\u0442\u043e"

    new-instance v3, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;-><init>(Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    :goto_82
    return-void

    .line 96
    :cond_83
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->name:Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_19

    .line 111
    :catch_86
    move-exception v0

    .line 112
    const-string v1, "DeviceAlias.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82
.end method
