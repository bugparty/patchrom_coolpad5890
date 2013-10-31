.class Landroid/content/res/Resources$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/Resources;->loadYLThemePackageProperty(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/Resources;

.field final synthetic val$packageProperties:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2762
    iput-object p1, p0, Landroid/content/res/Resources$1;->this$0:Landroid/content/res/Resources;

    iput-object p2, p0, Landroid/content/res/Resources$1;->val$packageProperties:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 2768
    const-string/jumbo v2, "item"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2769
    const-string/jumbo v2, "key"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2771
    .local v0, key:Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2773
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources$1;->val$packageProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
