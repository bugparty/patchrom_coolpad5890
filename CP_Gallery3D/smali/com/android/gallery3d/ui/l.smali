.class Lcom/android/gallery3d/ui/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/dj;


# instance fields
.field private cr:I

.field final synthetic cs:Lcom/android/gallery3d/ui/q;

.field private final mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/q;Lcom/android/gallery3d/a/cw;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/ui/l;->cs:Lcom/android/gallery3d/ui/q;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    invoke-static {p1}, Lcom/android/gallery3d/ui/q;->c(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/app/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/gallery3d/a/cw;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/l;->cr:I

    .line 125
    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/ui/l;->a(Landroid/content/Context;Lcom/android/gallery3d/a/cw;)V

    .line 126
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/gallery3d/a/cw;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/android/gallery3d/a/cw;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 199
    :cond_0
    return-void

    .line 133
    :sswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    check-cast v1, [D

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/l;->cr:I

    .line 135
    iget-object v2, p0, Lcom/android/gallery3d/ui/l;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v2}, Lcom/android/gallery3d/ui/q;->c(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/app/bm;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/android/gallery3d/ui/cd;->a(Lcom/android/gallery3d/app/bm;[DLcom/android/gallery3d/ui/dj;)Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    invoke-virtual {p2, v0}, Lcom/android/gallery3d/a/cw;->bg(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    const-string v2, "%s : %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/cd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/a/cw;->bh(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 144
    :sswitch_2
    const-string v1, "1"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v1, 0x7f0d008b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 150
    :sswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/n;

    .line 154
    invoke-virtual {v1}, Lcom/android/gallery3d/a/n;->O()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    const v1, 0x7f0d008c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 157
    :cond_3
    const v1, 0x7f0d008d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 162
    :sswitch_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 164
    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, v1, v4

    if-gez v4, :cond_4

    .line 165
    const-string v4, "1/%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3fe0

    const-wide/high16 v9, 0x3ff0

    div-double v1, v9, v1

    add-double/2addr v1, v7

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 167
    :cond_4
    double-to-int v4, v1

    .line 168
    int-to-double v5, v4

    sub-double v5, v1, v5

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-wide v7, 0x3f1a36e2eb1c432dL

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1/%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x3ff0

    div-double v5, v10, v5

    add-double/2addr v5, v8

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 181
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 183
    if-eqz v4, :cond_6

    const/4 v1, 0x1

    move v2, v1

    :goto_3
    const-string v5, "%s\'s value is Null"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/gallery3d/ui/cd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 183
    :cond_6
    const/4 v1, 0x0

    move v2, v1

    goto :goto_3

    .line 194
    :cond_7
    const-string v2, "%s : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/cd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x66 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/ui/l;->cr:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/l;->notifyDataSetChanged()V

    .line 238
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v0}, Lcom/android/gallery3d/ui/q;->d(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/a/cw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/cw;->bf(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 220
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v0}, Lcom/android/gallery3d/ui/q;->c(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/app/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/l;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-object p2

    .line 229
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method
