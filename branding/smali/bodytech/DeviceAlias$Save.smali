.class final Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;
.super Ljava/lang/Object;
.source "DeviceAlias.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/DeviceAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Save"
.end annotation


# instance fields
.field final a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

.field final in:Landroid/widget/EditText;

.field final reset:Z


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;Landroid/widget/EditText;Z)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    .line 124
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->in:Landroid/widget/EditText;

    .line 125
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->reset:Z

    .line 126
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->mac:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->reset:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_11
    # invokes: Lcom/isaigu/gymapp/bodytech/DeviceAlias;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/bodytech/DeviceAlias;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->nameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->a:Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;

    iget-object v3, v3, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Ask;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/DeviceAlias;->label(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_27
    return-void

    .line 132
    :cond_28
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/DeviceAlias$Save;->in:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_11

    .line 134
    :catch_33
    move-exception v0

    .line 135
    const-string v1, "DeviceAlias.save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method
