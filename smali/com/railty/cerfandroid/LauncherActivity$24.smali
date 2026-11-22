.class Lcom/railty/cerfandroid/LauncherActivity$24;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->CreateExeShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$found:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1282
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$24;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$24;->val$found:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1285
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$24;->val$found:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1286
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1287
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$24;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$24$1;

    invoke-direct {v1, p0, p1}, Lcom/railty/cerfandroid/LauncherActivity$24$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$24;Ljava/lang/String;)V

    const-string p1, "\ubc14\ub85c\uac00\uae30 \uc774\ub984"

    invoke-static {v0, p1, p2, v1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2700(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V

    .line 1293
    return-void
.end method
