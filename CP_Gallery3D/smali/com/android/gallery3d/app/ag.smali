.class public Lcom/android/gallery3d/app/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActionBar"

.field private static final hH:[Lcom/android/gallery3d/app/dn;

.field private static final hI:[Lcom/android/gallery3d/app/dn;


# instance fields
.field private W:I

.field private et:Lcom/android/gallery3d/app/bm;

.field private hG:Z

.field private hJ:Lcom/android/gallery3d/app/ch;

.field private hK:[Ljava/lang/CharSequence;

.field private hL:Ljava/util/ArrayList;

.field private hM:Landroid/app/ActionBar;

.field private hN:Lcom/android/gallery3d/app/cm;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 72
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/android/gallery3d/app/dn;

    new-instance v0, Lcom/android/gallery3d/app/dn;

    const v4, 0x7f0d00a2

    const v5, 0x7f0d0061

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const v8, 0x7f0d00a4

    const v9, 0x7f0d0079

    const v10, 0x7f0d005d

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/dn;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const v8, 0x7f0d00a3

    const v9, 0x7f0d0078

    const v10, 0x7f0d005e

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/dn;-><init>(IZZIII)V

    aput-object v4, v11, v12

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const/16 v5, 0x20

    const v8, 0x7f0d00a5

    const v9, 0x7f0d0060

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v4, v11, v14

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const/16 v5, 0x8

    const v8, 0x7f0d00a6

    const v9, 0x7f0d005f

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 88
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/android/gallery3d/app/dn;

    new-instance v0, Lcom/android/gallery3d/app/dn;

    const v4, 0x7f0d002b

    const v5, 0x7f0d0061

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const v8, 0x7f0d00a4

    const v9, 0x7f0d0079

    const v10, 0x7f0d005d

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/dn;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const v8, 0x7f0d00a3

    const v9, 0x7f0d0078

    const v10, 0x7f0d005e

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/dn;-><init>(IZZIII)V

    aput-object v4, v11, v12

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const/16 v5, 0x20

    const v8, 0x7f0d00a5

    const v9, 0x7f0d0060

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v4, v11, v14

    new-instance v4, Lcom/android/gallery3d/app/dn;

    const/16 v5, 0x8

    const v8, 0x7f0d00a6

    const v9, 0x7f0d005f

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/dn;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    .line 138
    new-instance v0, Lcom/android/gallery3d/app/cm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/cm;-><init>(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/app/a;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hN:Lcom/android/gallery3d/app/cm;

    move-object v0, p1

    .line 141
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    .line 142
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->mContext:Landroid/content/Context;

    .line 143
    iput-object p1, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->mInflater:Landroid/view/LayoutInflater;

    .line 145
    iput v2, p0, Lcom/android/gallery3d/app/ag;->W:I

    .line 146
    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ag;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 216
    if-eqz p2, :cond_0

    .line 217
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    .line 219
    :cond_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 220
    iget v4, v3, Lcom/android/gallery3d/app/dn;->action:I

    if-ne v4, p1, :cond_1

    .line 221
    iget v0, v3, Lcom/android/gallery3d/app/dn;->CN:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    return-object v0

    .line 219
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/ag;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    return v0
.end method

.method private bk()V
    .locals 7

    .prologue
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hL:Ljava/util/ArrayList;

    .line 156
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 157
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    if-eqz v1, :cond_0

    .line 158
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    .line 160
    :cond_0
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 161
    iget-boolean v5, v4, Lcom/android/gallery3d/app/dn;->enabled:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/android/gallery3d/app/dn;->visible:Z

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/android/gallery3d/app/ag;->mContext:Landroid/content/Context;

    iget v6, v4, Lcom/android/gallery3d/app/dn;->dialogTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v5, p0, Lcom/android/gallery3d/app/ag;->hL:Ljava/util/ArrayList;

    iget v4, v4, Lcom/android/gallery3d/app/dn;->action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hK:[Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hK:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    return-void
.end method

.method static synthetic bn()[Lcom/android/gallery3d/app/dn;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    return-object v0
.end method

.method static synthetic bo()[Lcom/android/gallery3d/app/dn;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    return-object v0
.end method

.method public static c(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 2
    .parameter

    .prologue
    .line 228
    const v0, 0x7f0a0045

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    .line 233
    :cond_0
    return-object v0
.end method


# virtual methods
.method public F(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 295
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 296
    iget-boolean v2, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    if-eqz v2, :cond_0

    .line 297
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    .line 299
    :cond_0
    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 300
    aget-object v4, v0, v2

    .line 301
    iget v4, v4, Lcom/android/gallery3d/app/dn;->action:I

    if-ne v4, p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 303
    iput v2, p0, Lcom/android/gallery3d/app/ag;->W:I

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_1
    return v0

    .line 299
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 307
    goto :goto_1
.end method

.method public a(ILcom/android/gallery3d/app/ch;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hJ:Lcom/android/gallery3d/app/ch;

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/ag;->hN:Lcom/android/gallery3d/app/cm;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ag;->F(I)Z

    .line 255
    iput-object p2, p0, Lcom/android/gallery3d/app/ag;->hJ:Lcom/android/gallery3d/app/ch;

    .line 256
    return-void
.end method

.method public a(Lcom/android/gallery3d/app/ch;)V
    .locals 4
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/gallery3d/app/ag;->bk()V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hL:Ljava/util/ArrayList;

    .line 266
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/ag;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ag;->hK:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/gallery3d/app/a;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/gallery3d/app/a;-><init>(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/app/ch;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 272
    return-void
.end method

.method public bl()I
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    iget v1, p0, Lcom/android/gallery3d/app/ag;->W:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/dn;->action:I

    return v0
.end method

.method public bm()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ag;->hJ:Lcom/android/gallery3d/app/ch;

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 261
    return-void
.end method

.method public c(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 172
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    if-eqz v1, :cond_0

    .line 173
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    .line 175
    :cond_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 176
    iget v4, v3, Lcom/android/gallery3d/app/dn;->action:I

    if-ne v4, p1, :cond_2

    .line 177
    iput-boolean p2, v3, Lcom/android/gallery3d/app/dn;->enabled:Z

    .line 181
    :cond_1
    return-void

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    .line 185
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ag;->hG:Z

    if-eqz v1, :cond_0

    .line 186
    sget-object v0, Lcom/android/gallery3d/app/ag;->hI:[Lcom/android/gallery3d/app/dn;

    .line 188
    :cond_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 189
    iget v4, v3, Lcom/android/gallery3d/app/dn;->action:I

    if-ne v4, p1, :cond_2

    .line 190
    iput-boolean p2, v3, Lcom/android/gallery3d/app/dn;->visible:Z

    .line 194
    :cond_1
    return-void

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 312
    iget v0, p0, Lcom/android/gallery3d/app/ag;->W:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hJ:Lcom/android/gallery3d/app/ch;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hJ:Lcom/android/gallery3d/app/ch;

    sget-object v1, Lcom/android/gallery3d/app/ag;->hH:[Lcom/android/gallery3d/app/dn;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/dn;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ch;->N(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 320
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 317
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ag;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method public setNavigationMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ag;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method
