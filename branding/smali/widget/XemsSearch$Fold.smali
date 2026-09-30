.class final Lcom/isaigu/gymapp/widget/XemsSearch$Fold;
.super Ljava/lang/Object;
.source "XemsSearch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fold"
.end annotation


# instance fields
.field private final et:Landroid/widget/EditText;

.field private final hidden:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    .line 154
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    .line 155
    return-void
.end method

.method private fold()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 205
    :cond_9
    return-void

    .line 188
    :cond_a
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_1e
    move-object v2, v0

    .line 190
    :goto_1f
    if-eqz v2, :cond_9

    .line 191
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 192
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hasListAfter(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 193
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v3, :cond_9

    .line 194
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_42

    .line 196
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_45
    move-object v0, v1

    .line 189
    goto :goto_1e

    .line 203
    :cond_47
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_58

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_55
    move-object v3, v2

    move-object v2, v0

    .line 204
    goto :goto_1f

    :cond_58
    move-object v0, v1

    .line 203
    goto :goto_55
.end method

.method private static hasListAfter(Landroid/view/ViewGroup;I)Z
    .registers 5

    .prologue
    .line 215
    add-int/lit8 v0, p1, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 218
    :cond_24
    const/4 v0, 0x1

    .line 221
    :goto_25
    return v0

    .line 215
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private unfold()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 208
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 211
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->hidden:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 168
    const/4 v1, 0x3

    if-eq p2, v1, :cond_a

    const/4 v1, 0x6

    if-eq p2, v1, :cond_a

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2b

    .line 171
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_2c

    .line 176
    :goto_22
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 177
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->unfold()V

    .line 178
    const/4 v0, 0x1

    .line 180
    :cond_2b
    return v0

    .line 174
    :catch_2c
    move-exception v0

    goto :goto_22
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 159
    if-eqz p2, :cond_6

    .line 160
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->fold()V

    .line 164
    :goto_5
    return-void

    .line 162
    :cond_6
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsSearch$Fold;->unfold()V

    goto :goto_5
.end method
