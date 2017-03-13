      require 'pdfkit'

      margin_top = margin_bottom = margin_left = margin_right = 0

      system("cp testpdf.html build/pdf.html")
      kit = PDFKit.new(File.new('build/pdf.html'),
                       :page_size => 'A4',
                       :margin_top => margin_top,
                       :margin_bottom => margin_bottom,
                       :margin_left => margin_left,
                       :margin_right => margin_right,
                       :disable_smart_shrinking => false,
                       :print_media_type => true,
                       :dpi => 300
      )

      file = kit.to_file('build/output.pdf')


