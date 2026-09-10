.class Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->append(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I
    .locals 9
    .param p1, "o1"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;
    .param p2, "o2"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 218
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 219
    .local v2, "name1":Ljava/lang/String;
    iget-object v3, p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 220
    .local v3, "name2":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 223
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 224
    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v6

    .line 227
    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 230
    .local v1, "length":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v7, v8, :cond_0

    .line 234
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v7, v8, :cond_5

    move v4, v5

    .line 235
    goto :goto_0

    .line 229
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 230
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v4, v6

    .line 238
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    check-cast p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I

    move-result v0

    return v0
.end method
