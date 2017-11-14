class WelcomeController < ApplicationController
  def index
    @news = Article.last(3).reverse
    @downloads = Download.last(3).reverse
    @milestones = Goal.last(3).reverse
    @trains = Train.last(3).reverse

    @page = "Index"
  end
    def marketplace
    @page = "Marketplace"
    end

  def team
    @page = "Team"
  end

  def team
    @page = "Mail_list"
  end

  def contact
    @contact = Contact.new
    @page = "Contact"
  end

  def oocran_deb
    send_file(
      "#{Rails.root}/public/system/packages/oocran/oocran_4.0.3.deb",
      filename: "oocran_4.0.3.deb",
      type: "application/pdf"
    )
  end

  def oocran_rpm
    send_file(
      "#{Rails.root}/public/system/packages/oocran/oocran_4.0.3.rpm",
      filename: "oocran_4.0.3.rpm",
      type: "application/pdf"
    )
  end

  def oocran_tar
    send_file(
      "#{Rails.root}/public/system/packages/oocran/oocran_4.0.3.tar.gz",
      filename: "oocran_4.0.3.tar.gz",
      type: "application/pdf"
    )
  end

  def bbu_deb
    send_file(
      "#{Rails.root}/public/system/packages/bbu/bbu_4.0.3.deb",
      filename: "bbu_4.0.3.deb",
      type: "application/pdf"
    )
  end

  def bbu_rpm
    send_file(
      "#{Rails.root}/public/system/packages/bbu/bbu_4.0.2.rpm",
      filename: "bbu_4.0.2.rpm",
      type: "application/pdf"
    )
  end

  def bbu_tar
    send_file(
      "#{Rails.root}/public/system/packages/bbu/bbu_4.0.2.tar.gz",
      filename: "bbu_4.0.2.tar.gz",
      type: "application/pdf"
    )
  end

  def bbu_nix
    send_file(
      "#{Rails.root}/public/system/packages/bbu/bbu_4.0.2.nix",
      filename: "bbu_4.0.2.nix",
      type: "application/pdf"
    )
  end

  def pdsch_enodeb
    send_file(
      "#{Rails.root}/public/system/packages/bbu/pdsch_enodeb",
      filename: "pdsch_enodeb",
      type: "application/pdf"
    )
  end

  def pdsch_ue
    send_file(
      "#{Rails.root}/public/system/packages/bbu/pdsch_ue",
      filename: "pdsch_ue",
      type: "application/pdf"
    )
  end
end
