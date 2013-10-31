.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final DIALOG_RECEIVE_COMPLETE_FAIL:I = 0x2

.field public static final DIALOG_RECEIVE_COMPLETE_SUCCESS:I = 0x1

.field public static final DIALOG_RECEIVE_ONGOING:I = 0x0

.field public static final DIALOG_SEND_COMPLETE_FAIL:I = 0x5

.field public static final DIALOG_SEND_COMPLETE_SUCCESS:I = 0x4

.field public static final DIALOG_SEND_ONGOING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferActivity"

.field private static final V:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedUpdateButton:Z

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 120
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 255
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 10

    .prologue
    const v9, 0x7f09000f

    const v6, 0x7f09000e

    const v5, 0x7f09000d

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 266
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v7, :cond_5

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 269
    const v3, 0x7f060022

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 272
    const v3, 0x7f060023

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 275
    const v3, 0x7f060024

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 279
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v3, :cond_4

    .line 280
    const v3, 0x7f060026

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .end local v2           #tmp:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :cond_3
    return-void

    .line 281
    .restart local v2       #tmp:Ljava/lang/String;
    :cond_4
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v7, :cond_1

    .line 282
    const v3, 0x7f06002d

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 285
    .end local v2           #tmp:Ljava/lang/String;
    :cond_5
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 287
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 288
    const v3, 0x7f06002f

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2       #tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 291
    const v3, 0x7f060023

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, tempFileType:Ljava/lang/String;
    const-string v3, "BluetoothOppTransferActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTransInfo.mFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 301
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, dotIndex:I
    if-gez v0, :cond_8

    .line 303
    const v3, 0x7f060030

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .end local v0           #dotIndex:I
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 318
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 319
    const v3, 0x7f060031

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 306
    .restart local v0       #dotIndex:I
    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 307
    const v3, 0x7f060030

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v8

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 311
    .end local v0           #dotIndex:I
    :cond_9
    const v3, 0x7f060030

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 320
    :cond_a
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 321
    const v3, 0x7f060032

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 324
    .end local v1           #tempFileType:Ljava/lang/String;
    .end local v2           #tmp:Ljava/lang/String;
    :cond_b
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 325
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    const/16 v4, 0x1ee

    if-ne v3, v4, :cond_c

    .line 326
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 327
    const v3, 0x7f060045

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2       #tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 330
    const v3, 0x7f06002a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 333
    const v3, 0x7f060046

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 349
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 337
    .end local v2           #tmp:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 338
    const v3, 0x7f060029

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2       #tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 341
    const v3, 0x7f06002a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 344
    const v3, 0x7f06002b

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 350
    .end local v2           #tmp:Ljava/lang/String;
    :cond_d
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 351
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 352
    const v3, 0x7f060034

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .restart local v2       #tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 355
    const v3, 0x7f060035

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 358
    const v3, 0x7f06002b

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 362
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayWhichDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 180
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 181
    .local v0, direction:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 182
    .local v2, isSuccess:Z
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    .line 184
    .local v1, isComplete:Z
    if-ne v0, v4, :cond_3

    .line 185
    if-ne v1, v4, :cond_2

    .line 186
    if-ne v2, v4, :cond_1

    .line 188
    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    .line 208
    :cond_0
    :goto_0
    const-string v3, "BluetoothOppTransferActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " WhichDialog/dir/isComplete/failOrSuccess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 189
    :cond_1
    if-nez v2, :cond_0

    .line 190
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 192
    :cond_2
    if-nez v1, :cond_0

    .line 193
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 195
    :cond_3
    if-nez v0, :cond_0

    .line 196
    if-ne v1, v4, :cond_5

    .line 197
    if-ne v2, v4, :cond_4

    .line 198
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 200
    :cond_4
    if-nez v2, :cond_0

    .line 201
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 203
    :cond_5
    if-nez v1, :cond_0

    .line 204
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 3

    .prologue
    const v2, 0x1080027

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 218
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 241
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setupAlert()V

    .line 242
    return-void

    .line 223
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 226
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 230
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 233
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method private updateButton()V
    .locals 6

    .prologue
    const v5, 0x1080027

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 483
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 489
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 493
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 496
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 498
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateProgressbar()V
    .locals 5

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v0, :cond_1

    .line 450
    const-string v0, "BluetoothOppTransferActivity"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 474
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateButton()V

    .line 475
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x5

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 372
    packed-switch p2, :pswitch_data_0

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 442
    return-void

    .line 374
    :pswitch_0
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v5, :cond_1

    .line 376
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 380
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 383
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v4, :cond_2

    .line 389
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 392
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 396
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 398
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 401
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const v3, 0x7f060042

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 407
    .end local v1           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 408
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 409
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_1
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v7, :cond_6

    .line 419
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 420
    .local v2, updateValues:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0x1ea

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v3, "BluetoothOppTransferActivity"

    const-string v4, "mContext.getContentResolver().update(contentUri1, updateValues, null, null)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    const-string v0, ""

    .line 426
    .local v0, msg:Ljava/lang/String;
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v3, :cond_5

    .line 427
    const v3, 0x7f060041

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_4
    :goto_1
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 433
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 428
    :cond_5
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v7, :cond_4

    .line 429
    const v3, 0x7f060044

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 435
    .end local v0           #msg:Ljava/lang/String;
    .end local v2           #updateValues:Landroid/content/ContentValues;
    :cond_6
    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v3, v4, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 139
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 140
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v1, :cond_0

    .line 142
    const-string v1, "BluetoothOppTransferActivity"

    const-string v2, "Error: Can not get data from db"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    .line 149
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 152
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 154
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 163
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setUpDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "BluetoothOppTransferActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 177
    return-void
.end method
