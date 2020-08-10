.class Lcom/ButtonLDR$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ButtonLDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ButtonLDR;


# direct methods
.method constructor <init>(Lcom/ButtonLDR;)V
    .locals 0

    iput-object p1, p0, Lcom/ButtonLDR$1;->this$0:Lcom/ButtonLDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget v0, Lcom/ButtonLDR;->SelState:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/ButtonLDR;->Icon:[Ljava/lang/String;

    array-length v1, v1

    rem-int v0, v0, v1

    sput v0, Lcom/ButtonLDR;->SelState:I

    sget-object v1, Lcom/ButtonLDR;->prefString:Ljava/lang/String;

    iget-object p1, p0, Lcom/ButtonLDR$1;->this$0:Lcom/ButtonLDR;

    invoke-virtual {p1, v1, v0}, Lcom/ButtonLDR;->setInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ButtonLDR;->UpdateUi(Landroid/content/Context;)V

    return-void
.end method
