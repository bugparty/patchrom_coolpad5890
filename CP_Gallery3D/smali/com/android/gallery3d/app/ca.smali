.class public Lcom/android/gallery3d/app/ca;
.super Lcom/android/gallery3d/app/w;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/bi;
.implements Lcom/android/gallery3d/ui/bo;
.implements Lcom/android/gallery3d/ui/dg;


# static fields
.field public static final SAVE_PATH:Ljava/lang/String; = "save_path"

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final vK:I = 0x1

.field private static final vL:I = 0xdac

.field private static final vM:I = 0x1

.field private static final vN:I = 0x2

.field private static final vO:I = 0x3

.field public static final vP:Ljava/lang/String; = "media-set-path"

.field public static final vQ:Ljava/lang/String; = "media-item-path"

.field public static final vR:Ljava/lang/String; = "index-hint"

.field public static final vS:Ljava/lang/String; = "camera_best_photo"

.field public static final vT:Ljava/lang/String; = "media-mms-path"


# instance fields
.field private W:I

.field private aa:Lcom/android/gallery3d/ui/ap;

.field private af:Z

.field private hM:Landroid/app/ActionBar;

.field private i:Lcom/android/gallery3d/app/cl;

.field private iC:Lcom/android/gallery3d/a/r;

.field private iG:Lcom/android/gallery3d/ui/ev;

.field private iO:Lcom/android/gallery3d/ui/cd;

.field private iQ:Z

.field private final iX:Lcom/android/gallery3d/ui/am;

.field private mHandler:Landroid/os/Handler;

.field private oG:Lcom/android/gallery3d/ui/bk;

.field private oI:Landroid/view/Menu;

.field private oM:Landroid/widget/ShareActionProvider;

.field private vU:Lcom/android/gallery3d/app/dt;

.field private vV:Lcom/android/gallery3d/ui/cc;

.field private vW:Lcom/android/gallery3d/a/dd;

.field private vX:Ljava/lang/String;

.field private vY:Lcom/android/gallery3d/a/dd;

.field private final vZ:Landroid/content/Intent;

.field private wa:Z

.field private wb:Lcom/android/gallery3d/app/aw;

.field private wc:Z

.field private wd:Z

.field private we:Lcom/android/gallery3d/a/ax;

.field private final wf:I

.field public final wg:I

.field public final wh:I

.field private wi:Ljava/lang/String;

.field private wj:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/w;-><init>()V

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vZ:Landroid/content/Intent;

    .line 119
    iput v1, p0, Lcom/android/gallery3d/app/ca;->W:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    .line 132
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/gallery3d/app/ca;->wf:I

    .line 133
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/gallery3d/app/ca;->wg:I

    .line 134
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/app/ca;->wh:I

    .line 137
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    .line 157
    new-instance v0, Lcom/android/gallery3d/app/en;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/en;-><init>(Lcom/android/gallery3d/app/ca;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    .line 833
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ca;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/android/gallery3d/app/ca;->W:I

    return p1
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    :try_start_0
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter playVideo uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 750
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/a/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ca;->b(Lcom/android/gallery3d/a/ax;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ca;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ca;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1089
    const-class v1, Lcom/android/gallery3d/app/ca;

    monitor-enter v1

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 1091
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 1092
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1094
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1095
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    monitor-exit v1

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ca;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ca;->wc:Z

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 871
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 878
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x4000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v2

    move-object v2, v1

    .line 884
    :goto_0
    const/16 v1, 0xa

    :try_start_2
    new-array v1, v1, [B

    .line 885
    const/4 v5, 0x6

    .line 886
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 887
    if-lez v5, :cond_0

    .line 888
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 889
    const-string v1, "GIF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    const/4 v0, 0x1

    .line 896
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 897
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 898
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 900
    :goto_1
    return v0

    .line 881
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 882
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x4000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    .line 893
    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    .line 894
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 896
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 897
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 898
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 896
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_3
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 897
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 898
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 896
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 893
    :catch_1
    move-exception v1

    move-object v4, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private av(I)V
    .locals 5
    .parameter

    .prologue
    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    .line 654
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lcom/android/gallery3d/ui/cd;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    new-instance v3, Lcom/android/gallery3d/app/db;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/db;-><init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/app/en;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/am;Lcom/android/gallery3d/ui/bt;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    .line 656
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    new-instance v1, Lcom/android/gallery3d/app/el;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/el;-><init>(Lcom/android/gallery3d/app/ca;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cd;->a(Lcom/android/gallery3d/ui/ea;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/cd;->w(I)V

    .line 663
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->show()V

    .line 664
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/ap;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/a/ax;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/a/ax;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/android/gallery3d/a/ax;)V
    .locals 3
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    if-ne v0, p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->ez()V

    .line 363
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v1}, Lcom/android/gallery3d/app/dt;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cd;->w(I)V

    .line 366
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->setTitle(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ap;->i(Z)V

    .line 370
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->setTitle(Ljava/lang/String;)V

    .line 375
    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->q(Lcom/android/gallery3d/a/dd;)V

    goto :goto_0

    .line 367
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private bJ()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->hide()V

    .line 650
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    return-object v0
.end method

.method private declared-synchronized c(Lcom/android/gallery3d/a/ax;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    .line 1123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 1124
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1125
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1129
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1131
    const v0, 0x7f0d00b0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1132
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calRemaining(Ljava/lang/String;)J

    move-result-wide v5

    .line 1135
    if-eqz v4, :cond_2

    const-wide/16 v7, 0x1

    cmp-long v4, v5, v7

    if-lez v4, :cond_2

    .line 1136
    const v0, 0x7f0d00b0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1147
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v3

    .line 1149
    if-eqz v3, :cond_3

    .line 1150
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1151
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1152
    if-le v4, v5, :cond_0

    .line 1153
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1160
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1162
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v5, 0x4000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1164
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1168
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1169
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1170
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1172
    :try_start_2
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/ca;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1173
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 1174
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1181
    :goto_2
    :try_start_3
    const-string v0, "TAG"

    const-string v1, "exit saveBestPhoto() >>>>>>>"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1183
    monitor-exit p0

    return-object v3

    .line 1137
    :cond_2
    if-eqz v3, :cond_5

    .line 1138
    const v0, 0x7f0d00af

    :try_start_4
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 1155
    :cond_3
    if-eqz v0, :cond_4

    .line 1156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1158
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YL_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1178
    :catch_1
    move-exception v0

    .line 1179
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/ca;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cd;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iO:Lcom/android/gallery3d/ui/cd;

    return-object v0
.end method

.method private eA()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 399
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    instance-of v1, v1, Lcom/android/gallery3d/a/be;

    if-nez v1, :cond_0

    .line 408
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private eB()V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 417
    const/4 v0, 0x0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 418
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->getCurrentIndex()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/ca;->W:I

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    iget v1, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cc;->ak(I)V

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->show()V

    goto :goto_0
.end method

.method private eC()V
    .locals 2

    .prologue
    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    if-nez v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 432
    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->hide()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private eD()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wd:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 448
    :cond_0
    return-void
.end method

.method private eG()V
    .locals 15

    .prologue
    const v13, 0x7f0d00c0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1006
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v6

    .line 1007
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 1008
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1009
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1010
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1013
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1015
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calRemaining(Ljava/lang/String;)J

    move-result-wide v9

    .line 1018
    if-eqz v3, :cond_2

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-lez v3, :cond_2

    .line 1019
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1024
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1025
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "YL_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-virtual {v6}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v9

    .line 1027
    if-eqz v9, :cond_3

    .line 1028
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 1029
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1030
    if-le v3, v10, :cond_7

    .line 1031
    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1033
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v14, v2

    move v2, v3

    move-object v3, v14

    .line 1049
    :goto_2
    if-nez v2, :cond_4

    .line 1051
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/16 v8, 0x4000

    invoke-direct {v2, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1053
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1055
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1057
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1058
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1059
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1061
    :try_start_1
    invoke-static {v2, v9}, Lcom/android/gallery3d/app/ca;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1062
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1063
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 1064
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v5

    .line 1077
    :goto_3
    const-string v5, ""

    .line 1078
    if-eqz v2, :cond_5

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d00cf

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    :goto_4
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1084
    return-void

    .line 1020
    :cond_2
    if-eqz v2, :cond_0

    .line 1021
    const v1, 0x7f0d00bf

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1035
    :cond_3
    invoke-virtual {v6}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1036
    invoke-virtual {v6}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1037
    const-string v3, "file://"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1038
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 1039
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1040
    if-le v3, v10, :cond_6

    .line 1041
    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1043
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    goto/16 :goto_2

    .line 1066
    :catch_0
    move-exception v2

    .line 1067
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v4

    .line 1068
    goto :goto_3

    .line 1070
    :catch_1
    move-exception v2

    .line 1071
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v4

    .line 1073
    goto :goto_3

    :cond_4
    move v2, v5

    .line 1075
    goto :goto_3

    .line 1081
    :cond_5
    const v1, 0x7f0d00d0

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v3, v2

    move v2, v4

    goto/16 :goto_2

    :cond_7
    move v3, v4

    goto/16 :goto_1
.end method

.method private ey()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/j;->b(Landroid/content/Context;)Lcom/android/gallery3d/app/j;

    move-result-object v10

    .line 187
    new-instance v0, Lcom/android/gallery3d/ui/cc;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    iget v3, v10, Lcom/android/gallery3d/app/j;->dz:I

    iget v4, v10, Lcom/android/gallery3d/app/j;->dA:I

    iget v5, v10, Lcom/android/gallery3d/app/j;->dB:I

    iget v6, v10, Lcom/android/gallery3d/app/j;->dD:I

    iget v7, v10, Lcom/android/gallery3d/app/j;->dC:I

    iget v8, v10, Lcom/android/gallery3d/app/j;->dF:I

    iget v9, v10, Lcom/android/gallery3d/app/j;->dE:I

    iget v10, v10, Lcom/android/gallery3d/app/j;->dG:I

    invoke-direct/range {v0 .. v10}, Lcom/android/gallery3d/ui/cc;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;IIIIIIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/ui/bo;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/ui/dg;)V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    iget v1, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cc;->ak(I)V

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    iget v1, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cc;->setStartIndex(I)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/ui/cc;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->requestLayout()V

    .line 198
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->af:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->resume()V

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/ui/cc;->setVisibility(I)V

    .line 200
    :cond_1
    return-void
.end method

.method private ez()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oI:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    if-eqz v0, :cond_3

    .line 389
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v1

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const-string v2, "image/*"

    invoke-static {v0, v2}, Lcom/android/gallery3d/b/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 392
    and-int/lit16 v0, v1, -0x201

    .line 395
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->oI:Landroid/view/Menu;

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;I)V

    goto :goto_0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oI:Landroid/view/Menu;

    const v1, 0x7f0a0032

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eA()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic f(Lcom/android/gallery3d/app/ca;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vZ:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/app/dt;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    return-object v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/ca;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->af:Z

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->ey()V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eC()V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/ca;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->wi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->bJ()V

    return-void
.end method

.method static synthetic n(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method private q(Lcom/android/gallery3d/a/dd;)V
    .locals 4
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oM:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v1

    .line 335
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-static {v1}, Lcom/android/gallery3d/ui/bk;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oM:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vW:Lcom/android/gallery3d/a/dd;

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/ca;->vW:Lcom/android/gallery3d/a/dd;

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 352
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    if-eqz v0, :cond_2

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private u(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 931
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v6

    .line 932
    if-eqz v6, :cond_3

    .line 935
    if-eqz p1, :cond_8

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 937
    iget-object v3, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v3}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 938
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 939
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 940
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "YL_"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ".png"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 943
    if-lt v5, v4, :cond_0

    add-int/lit8 v11, v4, 0x1

    if-eq v5, v11, :cond_0

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v5, v1

    .line 945
    :goto_0
    if-lez v4, :cond_5

    if-eqz v5, :cond_5

    .line 946
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 958
    :cond_1
    :goto_1
    if-lez v4, :cond_3

    .line 959
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 962
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/16 v8, 0x4000

    invoke-direct {v5, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 964
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 966
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 968
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 969
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 970
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 972
    :try_start_2
    invoke-static {v5, v8}, Lcom/android/gallery3d/app/ca;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 973
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 974
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 984
    :goto_2
    :try_start_3
    const-string v2, ""

    .line 985
    if-eqz v1, :cond_7

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d00cf

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    :goto_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1001
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v5, v2

    .line 943
    goto :goto_0

    .line 947
    :cond_5
    if-lez v4, :cond_1

    .line 948
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 949
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 950
    if-lez v5, :cond_6

    .line 951
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "YL_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 954
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YL_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto/16 :goto_1

    .line 976
    :catch_0
    move-exception v1

    .line 977
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v1, v2

    .line 978
    goto/16 :goto_2

    .line 980
    :catch_1
    move-exception v1

    .line 981
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 982
    goto/16 :goto_2

    .line 988
    :cond_7
    const v1, 0x7f0d00d0

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 995
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eG()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 997
    :catch_2
    move-exception v0

    .line 998
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    .line 206
    new-instance v0, Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/ev;-><init>(Lcom/android/gallery3d/app/bh;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    .line 207
    new-instance v0, Lcom/android/gallery3d/ui/bk;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bk;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->oG:Lcom/android/gallery3d/ui/bk;

    .line 208
    new-instance v0, Lcom/android/gallery3d/ui/ap;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ap;-><init>(Lcom/android/gallery3d/app/bm;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/bi;)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    .line 212
    const-string v0, "media-set-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v0, "camera_best_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    const-string v2, "camera_best_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    .line 217
    :cond_0
    const-string v0, "media-item-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    .line 219
    const-string v0, "media-mms-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vX:Ljava/lang/String;

    .line 220
    const-string v0, "save_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->wi:Ljava/lang/String;

    .line 223
    if-eqz v1, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    .line 225
    const-string v0, "index-hint"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/ca;->W:I

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->o(Ljava/lang/String;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    if-nez v0, :cond_1

    .line 229
    const-string v0, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Lcom/android/gallery3d/app/c;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    iget-object v3, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    iget-object v4, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    iget v5, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/c;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/dd;I)V

    .line 235
    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/cs;)V

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vZ:Landroid/content/Intent;

    const-string v2, "index-hint"

    iget v3, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->vZ:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/ca;->a(ILandroid/content/Intent;)V

    .line 239
    new-instance v1, Lcom/android/gallery3d/app/eo;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/eo;-><init>(Lcom/android/gallery3d/app/ca;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/cx;)V

    .line 292
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/gallery3d/app/ek;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ek;-><init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/a/dd;)V

    .line 328
    return-void

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 287
    new-instance v1, Lcom/android/gallery3d/app/cd;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v3, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/gallery3d/app/cd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/ax;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/cs;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->b(Lcom/android/gallery3d/a/ax;)V

    goto :goto_0
.end method

.method public aq(I)Z
    .locals 1
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ap;->ae(I)Z

    move-result v0

    return v0
.end method

.method protected b(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 766
    packed-switch p1, :pswitch_data_0

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 768
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 769
    if-eqz p3, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    iget v2, p0, Lcom/android/gallery3d/app/ca;->W:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/dt;->a(Lcom/android/gallery3d/a/dd;I)V

    goto :goto_0

    .line 778
    :pswitch_1
    if-ne p2, v0, :cond_1

    const v0, 0x7f0d006d

    .line 781
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 778
    :cond_1
    const v0, 0x7f0d006e

    goto :goto_1

    .line 786
    :pswitch_2
    if-eqz p3, :cond_0

    .line 787
    const-string v0, "media-item-path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    const-string v1, "photo-index"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 789
    iput v1, p0, Lcom/android/gallery3d/app/ca;->W:I

    .line 790
    if-eqz v0, :cond_0

    .line 791
    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/app/dt;->a(Lcom/android/gallery3d/a/dd;I)V

    .line 792
    sput-boolean v3, Lcom/android/gallery3d/app/dw;->EY:Z

    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0032

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 518
    iget-boolean v3, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    if-eqz v3, :cond_1

    .line 519
    const v2, 0x7f100009

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 541
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->ez()V

    .line 542
    return v1

    .line 521
    :cond_1
    const v3, 0x7f100008

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vX:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vX:Ljava/lang/String;

    const-string v3, "content://media/external/video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 533
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/gallery3d/app/ag;->c(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->oM:Landroid/widget/ShareActionProvider;

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vW:Lcom/android/gallery3d/a/dd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vW:Lcom/android/gallery3d/a/dd;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->q(Lcom/android/gallery3d/a/dd;)V

    .line 535
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/app/ca;->oI:Landroid/view/Menu;

    .line 536
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    .line 537
    sget-boolean v0, Lcom/android/gallery3d/app/dw;->EY:Z

    if-eqz v0, :cond_0

    .line 538
    iput-boolean v2, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    goto :goto_0

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vY:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/local/video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 530
    :cond_5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    instance-of v0, v0, Lcom/android/gallery3d/a/be;

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public bE()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v0, "/map/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    .line 640
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 641
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "show_on_map"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 645
    return-void
.end method

.method protected c(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 548
    if-nez v1, :cond_0

    move v0, v2

    .line 631
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->getCurrentIndex()I

    move-result v0

    .line 553
    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v3

    .line 554
    iget-object v4, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v4}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v4

    .line 555
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 556
    sparse-switch v5, :sswitch_data_0

    .line 631
    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :sswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 559
    const-string v4, "media-set-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v5}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v4, "media-item-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v3, "photo-index"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v0, "repeat"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v3, Lcom/android/gallery3d/app/dw;

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v0, v2

    .line 565
    goto :goto_0

    .line 568
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 569
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    const-class v6, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 571
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 572
    invoke-static {v1}, Lcom/android/gallery3d/c/b;->b(Lcom/android/gallery3d/a/bj;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 575
    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 579
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eH()V

    move v0, v2

    .line 580
    goto :goto_0

    .line 583
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 585
    if-eqz v1, :cond_2

    .line 586
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/a/ax;)Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eH()V

    .line 588
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 589
    const-string v4, "filepath"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 593
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v2

    .line 594
    goto/16 :goto_0

    .line 598
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    if-eqz v1, :cond_3

    .line 599
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->bJ()V

    :goto_2
    move v0, v2

    .line 603
    goto/16 :goto_0

    .line 601
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ca;->av(I)V

    goto :goto_2

    .line 612
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gn()V

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 614
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oG:Lcom/android/gallery3d/ui/bk;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/cg;)Z

    move v0, v2

    .line 615
    goto/16 :goto_0

    .line 617
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gn()V

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 619
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oG:Lcom/android/gallery3d/ui/bk;

    new-instance v1, Lcom/android/gallery3d/ui/ee;

    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v1, v3}, Lcom/android/gallery3d/ui/ee;-><init>(Lcom/android/gallery3d/app/bm;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/cg;)Z

    move v0, v2

    .line 621
    goto/16 :goto_0

    .line 624
    :sswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 625
    goto/16 :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0032 -> :sswitch_0
        0x7f0a0046 -> :sswitch_6
        0x7f0a0048 -> :sswitch_5
        0x7f0a004a -> :sswitch_5
        0x7f0a004b -> :sswitch_5
        0x7f0a004c -> :sswitch_5
        0x7f0a004d -> :sswitch_1
        0x7f0a004e -> :sswitch_5
        0x7f0a004f -> :sswitch_4
        0x7f0a0050 -> :sswitch_5
        0x7f0a0051 -> :sswitch_5
        0x7f0a0052 -> :sswitch_7
        0x7f0a0053 -> :sswitch_3
        0x7f0a0054 -> :sswitch_2
    .end sparse-switch
.end method

.method public eE()V
    .locals 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eC()V

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eB()V

    .line 473
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    goto :goto_0
.end method

.method public eF()V
    .locals 10

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 910
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v1}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v2

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 912
    new-instance v5, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.FILESAVEAS"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    const-string v6, "FILE_PATH"

    .line 914
    const-string v7, "APP_NAME"

    .line 915
    const-string v8, "FILE_NAME"

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "YL_"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 919
    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 920
    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 922
    :cond_0
    const-string v3, "gallery"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const/16 v1, 0xc8

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 927
    return-void
.end method

.method public declared-synchronized eH()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1103
    monitor-enter p0

    :try_start_0
    const-string v1, "TAG"

    const-string v2, "enter cancelBestPhoto() >>>>>>>"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    .line 1106
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v1

    .line 1107
    iget-object v3, p0, Lcom/android/gallery3d/app/ca;->iC:Lcom/android/gallery3d/a/r;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v0

    .line 1108
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1109
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 1110
    const-string v4, "PhotoPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " the  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mPhotoPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/y;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/ao;->i(Lcom/android/gallery3d/a/dd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1114
    :cond_0
    monitor-exit p0

    return-void

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public em()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eB()V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wd:Z

    .line 481
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    .line 482
    return-void
.end method

.method public en()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wd:Z

    .line 491
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->af:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    .line 492
    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 1
    .parameter

    .prologue
    .line 461
    if-eqz p1, :cond_0

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wa:Z

    .line 463
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eB()V

    .line 464
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    .line 466
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 4

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->iQ:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->bJ()V

    .line 512
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ek;->clear()V

    .line 501
    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    if-eqz v1, :cond_1

    .line 502
    new-instance v1, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/cq;-><init>()V

    .line 503
    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/am;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/gallery3d/ui/cq;->x:F

    .line 504
    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/am;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/gallery3d/ui/cq;->y:F

    .line 505
    const/high16 v2, -0x3b86

    iput v2, v1, Lcom/android/gallery3d/ui/cq;->z:F

    .line 506
    iget-object v2, p0, Lcom/android/gallery3d/app/ca;->we:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;Lcom/android/gallery3d/ui/cq;)V

    .line 510
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1188
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    const/high16 v1, -0x3c79

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->i(F)Z

    .line 1193
    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->i(F)Z

    .line 1198
    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    .line 1199
    invoke-virtual {p0, v2, v2}, Lcom/android/gallery3d/app/ca;->v(II)V

    .line 1201
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 800
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->af:Z

    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->pause()V

    .line 805
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/cd;->pause()V

    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->pause()V

    .line 807
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->pause()V

    .line 808
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->wb:Lcom/android/gallery3d/app/aw;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->oG:Lcom/android/gallery3d/ui/bk;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bk;->pause()V

    .line 811
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ca;->wj:Z

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 818
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ca;->af:Z

    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ca;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 821
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->resume()V

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->resume()V

    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vV:Lcom/android/gallery3d/ui/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->resume()V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->wb:Lcom/android/gallery3d/app/aw;

    if-nez v0, :cond_1

    .line 827
    new-instance v0, Lcom/android/gallery3d/app/aw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/aw;-><init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/app/en;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ca;->wb:Lcom/android/gallery3d/app/aw;

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->hM:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/ca;->wb:Lcom/android/gallery3d/app/aw;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->onUserInteraction()V

    .line 831
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/gallery3d/app/ca;->eD()V

    .line 455
    return-void
.end method

.method public v(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x7

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/app/ca;->vU:Lcom/android/gallery3d/app/dt;

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v4

    .line 668
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 669
    if-nez v4, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v1

    .line 676
    :goto_1
    if-eqz v3, :cond_d

    .line 679
    iget-object v3, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v3

    .line 680
    iget-object v5, p0, Lcom/android/gallery3d/app/ca;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v5

    .line 681
    div-int/lit8 v6, v3, 0x2

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    if-gt v6, v3, :cond_3

    div-int/lit8 v3, v5, 0x2

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xc

    if-gt v3, v5, :cond_3

    .line 685
    :goto_2
    if-eqz v1, :cond_4

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->db()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/ca;->a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 673
    goto :goto_1

    :cond_3
    move v1, v2

    .line 681
    goto :goto_2

    .line 691
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v3

    .line 693
    if-eqz v1, :cond_8

    .line 694
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 695
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 696
    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->getSize()J

    move-result-wide v5

    const-wide/32 v7, 0x3d0900

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 697
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/app/ca;->a(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    .line 701
    :cond_5
    if-eqz v2, :cond_7

    .line 702
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/gallery3d/app/MyGifView;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    if-eqz v3, :cond_6

    .line 704
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_6

    .line 706
    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    :cond_6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 712
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eE()V

    goto/16 :goto_0

    .line 714
    :cond_8
    if-eqz v3, :cond_0

    .line 715
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_a

    .line 717
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/app/ca;->a(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    .line 719
    if-eqz v2, :cond_9

    .line 720
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/app/MyGifView;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 721
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 724
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eE()V

    goto/16 :goto_0

    .line 726
    :cond_a
    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 727
    const-string v1, ""

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/app/ca;->a(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    .line 728
    if-eqz v1, :cond_b

    .line 729
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/MyGifView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 733
    :cond_b
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eE()V

    goto/16 :goto_0

    .line 736
    :cond_c
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ca;->eE()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto/16 :goto_2
.end method
