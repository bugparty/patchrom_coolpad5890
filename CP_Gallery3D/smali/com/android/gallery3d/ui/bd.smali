.class public Lcom/android/gallery3d/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionModeHandler"

.field private static final oF:I = 0x907


# instance fields
.field private final Y:Landroid/os/Handler;

.field private final et:Lcom/android/gallery3d/app/bm;

.field private final iG:Lcom/android/gallery3d/ui/ev;

.field private final oG:Lcom/android/gallery3d/ui/bk;

.field private final oH:Landroid/nfc/NfcAdapter;

.field private oI:Landroid/view/Menu;

.field private oJ:Lcom/android/gallery3d/ui/el;

.field private oK:Lcom/android/gallery3d/ui/aw;

.field private oL:Lcom/android/gallery3d/b/l;

.field private oM:Landroid/widget/ShareActionProvider;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/bm;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    .line 78
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ev;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    .line 79
    new-instance v0, Lcom/android/gallery3d/ui/bk;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/bk;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oG:Lcom/android/gallery3d/ui/bk;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->Y:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oH:Landroid/nfc/NfcAdapter;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bd;)Lcom/android/gallery3d/ui/ev;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/bd;->k(Lcom/android/gallery3d/b/j;)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/bd;)Landroid/view/Menu;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oI:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/bd;->l(Lcom/android/gallery3d/b/j;)V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/bd;)Landroid/widget/ShareActionProvider;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oM:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method private df()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gs()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/bd;->setTitle(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oJ:Lcom/android/gallery3d/ui/el;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/el;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ev;->go()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 145
    const v1, 0x7f0d004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 148
    const v1, 0x7f0d004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private k(Lcom/android/gallery3d/b/j;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gs()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    move v1, v4

    .line 184
    :goto_0
    const/4 v0, -0x1

    .line 185
    if-nez v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v6

    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 192
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 183
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/a/ao;->h(Lcom/android/gallery3d/a/dd;)I

    move-result v8

    .line 194
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    or-int/2addr v0, v1

    .line 195
    and-int v1, v3, v8

    move v3, v1

    move v1, v0

    .line 196
    goto :goto_1

    .line 198
    :cond_2
    invoke-static {v1}, Lcom/android/gallery3d/ui/bk;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 214
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->Y:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/da;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/da;-><init>(Lcom/android/gallery3d/ui/bd;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 203
    and-int/lit16 v2, v3, -0x201

    goto :goto_3

    .line 206
    :cond_4
    and-int/lit16 v2, v3, 0x907

    goto :goto_3

    :cond_5
    move v2, v4

    .line 209
    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method private l(Lcom/android/gallery3d/b/j;)V
    .locals 10
    .parameter

    .prologue
    const/16 v6, 0xe10

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oM:Landroid/widget/ShareActionProvider;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v4

    .line 236
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 240
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 241
    if-le v1, v6, :cond_2

    .line 242
    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 244
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 245
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/a/ao;->h(Lcom/android/gallery3d/a/dd;)I

    move-result v7

    .line 246
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v8

    or-int/2addr v1, v8

    .line 248
    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 249
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    if-lez v0, :cond_0

    .line 255
    invoke-static {v1}, Lcom/android/gallery3d/ui/bk;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-le v0, v9, :cond_5

    .line 257
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 263
    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->Y:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/co;

    invoke-direct {v1, p0, v5}, Lcom/android/gallery3d/ui/co;-><init>(Lcom/android/gallery3d/ui/bd;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 260
    :cond_5
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/ui/bd;->oK:Lcom/android/gallery3d/ui/aw;

    .line 110
    return-void
.end method

.method public b(Lcom/android/gallery3d/a/dd;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bd;->dg()V

    .line 277
    return-void
.end method

.method public de()Landroid/view/ActionMode;
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 86
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/android/gallery3d/ui/f;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/f;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 91
    const v3, 0x7f0a0002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f10000b

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/ui/f;->a(Landroid/widget/Button;I)Lcom/android/gallery3d/ui/el;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oJ:Lcom/android/gallery3d/ui/el;

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bd;->df()V

    .line 95
    new-instance v0, Lcom/android/gallery3d/ui/cy;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/cy;-><init>(Lcom/android/gallery3d/ui/bd;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/f;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 101
    return-object v1
.end method

.method public dg()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bd;->df()V

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oM:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oI:Landroid/view/Menu;

    const v2, 0x7f0a0045

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    .line 287
    :goto_0
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 288
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/cn;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/cn;-><init>(Lcom/android/gallery3d/ui/bd;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    .line 305
    return-void

    .line 285
    :cond_2
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 287
    goto :goto_1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oK:Lcom/android/gallery3d/ui/aw;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oK:Lcom/android/gallery3d/ui/aw;

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/aw;->b(Landroid/view/MenuItem;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ev;->gr()V

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0a0046

    if-ne v1, v2, :cond_2

    .line 123
    new-instance v0, Lcom/android/gallery3d/ui/ee;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ee;-><init>(Lcom/android/gallery3d/app/bm;)V

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->oG:Lcom/android/gallery3d/ui/bk;

    invoke-virtual {v1, p2, v0}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/cg;)Z

    move-result v0

    .line 126
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0a0056

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bd;->dg()V

    .line 128
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bd;->df()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 155
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    invoke-static {p2}, Lcom/android/gallery3d/app/ag;->c(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oM:Landroid/widget/ShareActionProvider;

    .line 158
    new-instance v0, Lcom/android/gallery3d/ui/cz;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/cz;-><init>(Lcom/android/gallery3d/ui/bd;)V

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/ui/bd;->oM:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 166
    iput-object p2, p0, Lcom/android/gallery3d/ui/bd;->oI:Landroid/view/Menu;

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gr()V

    .line 172
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bd;->oL:Lcom/android/gallery3d/b/l;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oG:Lcom/android/gallery3d/ui/bk;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bk;->pause()V

    .line 313
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bd;->dg()V

    .line 317
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/bd;->oJ:Lcom/android/gallery3d/ui/el;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/el;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
