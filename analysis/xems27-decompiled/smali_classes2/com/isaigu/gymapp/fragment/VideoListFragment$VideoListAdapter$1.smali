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
        "Ljava/util/Comparator<",
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

    .line 218
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I
    .locals 9
    .param p1, "o1"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;
    .param p2, "o2"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .line 220
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 221
    .local v0, "name1":Ljava/lang/String;
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    .line 222
    .local v1, "name2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    return v3

    .line 225
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    return v4

    .line 228
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    return v5

    .line 231
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v2, v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    .local v2, "length":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_6

    .line 233
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ge v7, v8, :cond_4

    .line 234
    return v3

    .line 236
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-le v7, v8, :cond_5

    .line 237
    return v4

    .line 232
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v6    # "i":I
    :cond_6
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 218
    check-cast p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    check-cast p2, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;->compare(Lcom/isaigu/gymapp/bean/vo/VideoVO;Lcom/isaigu/gymapp/bean/vo/VideoVO;)I

    move-result p1

    return p1
.end method
